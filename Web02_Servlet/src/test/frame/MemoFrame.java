package test.frame;

import java.awt.BorderLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.beans.PropertyChangeEvent;
import java.beans.PropertyChangeListener;
import java.util.List;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.JTextField;
import javax.swing.table.DefaultTableModel;

import test.dao.MemoDao;
import test.dto.MemoDto;

/*
	 * Create SEQUNCE MEMO_SEQ;
	 * 
	 * 위와 같이 테이블과 시퀸스를 만들고 해당 테이블에 데이터를
	 * SELECT,INSERT, UPDATE,DELETE, 기능을 수행할 수있는 MemoFrame을 만들어 보세요.
	 * 
	 * 조건
	 * 1.num 칼럼의 값은 시퀸스를 이용해서 넣으세요
	 * 2.regdate 칼람(등록일)의 값은 SYSDATE를 이용해서 넣으
	 * 3.수정은 content 만 수정 가능하게 하세요
	 */

public class MemoFrame extends JFrame implements ActionListener, PropertyChangeListener {
	JTextField inputContents;
	DefaultTableModel model;
	JTable table;

	public MemoFrame() {
		setLayout(new BorderLayout());
		setBounds(100, 100, 800, 600);
		setTitle("MEMOFRAME");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

		JPanel inputPanel = new JPanel();
		JPanel btnPanel = new JPanel();

		JLabel ContentsLab = new JLabel("콘텐츠");
		inputContents = new JTextField(10);

		JButton selectBtn = new JButton("찾기");
		selectBtn.addActionListener(this);
		selectBtn.setActionCommand("select");

		JButton insertBtn = new JButton("추가");
		insertBtn.addActionListener(this);
		insertBtn.setActionCommand("insert");

		JButton getListBtn = new JButton("모두 불러오기");
		getListBtn.addActionListener(this);
		getListBtn.setActionCommand("getList");

		JButton deleteBtn = new JButton("삭제");
		deleteBtn.addActionListener(this);
		deleteBtn.setActionCommand("delete");

		inputPanel.add(ContentsLab);
		inputPanel.add(inputContents);
		inputPanel.add(selectBtn);
		inputPanel.add(insertBtn);
		inputPanel.add(getListBtn);
		inputPanel.add(deleteBtn);
		add(inputPanel, BorderLayout.NORTH);

		table = new JTable();
		table.addPropertyChangeListener(this);
		String colName[] = { "번호", "콘텐츠", "날짜" };
		model = new DefaultTableModel(colName, 0) {
			@Override
			public boolean isCellEditable(int row,int column) {
				if(column==0||column==2) {
					return false;
				}
				return true;
			}
			
		};

		table.setModel(model);
		JScrollPane scroll = new JScrollPane(table, JScrollPane.VERTICAL_SCROLLBAR_ALWAYS,
				JScrollPane.HORIZONTAL_SCROLLBAR_NEVER);
		add(scroll, BorderLayout.CENTER);

		setVisible(true);

		displayMemo();
	}

	public void displayMemo() {
		// row 의 갯수를 강제로 0 으로 지정해서 삭제 한다.
		model.setRowCount(0);
		// 회원 목록을 얻어와서
		MemoDao dao = MemoDao.getInstance();
		List<MemoDto> list = dao.getList();
		for (MemoDto tmp : list) {
			// MemberDto 객체에 저장된 정보를 Object[] 객체에 순서대로 담는다.
			Object[] row = { tmp.getNum(), tmp.getContents(), tmp.getRegdate() };
			model.addRow(row);
		}
	}

	public static void main(String[] args) {
		new MemoFrame();
	}

	@Override
	public void actionPerformed(ActionEvent e) {
		if (e.getActionCommand().equals("select")) {
			if (inputContents.getText().equals("")) {
				JOptionPane.showMessageDialog(this, "값을 입력해 주세요");
			} else {
				select();
			}

		} else if (e.getActionCommand().equals("insert")) {
			if (inputContents.getText().equals("")) {
				JOptionPane.showMessageDialog(this, "값을 입력해 주세요");
			} else {
				insert();
			}

		} else if (e.getActionCommand().equals("delete")) {
			int selectedRow = table.getSelectedRow();
			if (table.isRowSelected(selectedRow) == true) {
				int deleteNum = (int) table.getValueAt(selectedRow, 0);
				MemoDao dao = MemoDao.getInstance();
				dao.delete(deleteNum);
				model.removeRow(selectedRow);
			} else {
				JOptionPane.showMessageDialog(this, "삭제할 행을 선택해 주세요");
			}

		} else if (e.getActionCommand().equals("getList")) {
			displayMemo();
		}
	}

	boolean isEditing = false;

	@Override
	public void propertyChange(PropertyChangeEvent evt) {
		System.out.println(evt.getPropertyName());
		if (evt.getPropertyName().equals("tableCellEditor")) {
			if (isEditing) {
				int selectedRow = table.getSelectedRow();
				int num = (int) model.getValueAt(selectedRow, 0);
				String content = (String) model.getValueAt(selectedRow, 1);
				String date = (String) model.getValueAt(selectedRow, 2);
				MemoDao dao = MemoDao.getInstance();
				MemoDto dto = new MemoDto();
				dto.setContents(content);
				dto.setNum(num);
				dto.setRegdate(date);
				dao.Update(dto);
				isEditing = false;
			}
			isEditing = true;
		}

	}
	public void select() {
		model.setRowCount(0);
		MemoDao dao = MemoDao.getInstance();
		Integer inputNum = Integer.parseInt(inputContents.getText());
		MemoDto dto = dao.getData(inputNum);
		Object[] obj = { dto.getNum(), dto.getContents(), dto.getRegdate() };
		model.addRow(obj);
	}
	public void insert() {
		MemoDto dto = new MemoDto();
		dto.setContents(inputContents.getText());
		Object[] obj = { dto.getNum(), dto.getContents(), dto.getRegdate() };
		model.addRow(obj);
		MemoDao dao = MemoDao.getInstance();
		dao.insert(dto);
		displayMemo();
	}
}
