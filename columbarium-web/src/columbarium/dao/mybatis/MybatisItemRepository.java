package columbarium.dao.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import columbarium.dao.ItemRepository;
import columbarium.dao.mybatis.mappers.ItemMapper;
import columbarium.model.Item;
import columbarium.model.ItemCategory;

public class MybatisItemRepository extends MybatisClient implements ItemRepository{

	public MybatisItemRepository(MybatisConnectionManager connectionManager) {
		super(connectionManager);
		// TODO Auto-generated constructor stub
	}

	@Override
	public String createItem(Item item) {
		// TODO Auto-generated method stub
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try{
			System.out.println(item.getStrItemName());
			ItemMapper itemMapper = sqlSession.getMapper(ItemMapper.class);
			if (itemMapper.checkIfExisting(item) > 0){
				System.out.println(itemMapper.checkIfExisting(item));
				return "failed-existing";
			}
			itemMapper.saveItem(item);
			sqlSession.commit();
			return "success";
			
		}catch(Exception e){
			sqlSession.rollback();
			e.printStackTrace();
		}finally{
			sqlSession.close();
		}
		return "failed-database";
		
	}

	@Override
	public Item searchItem(Item item) {
		// TODO Auto-generated method stub
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try{
			
			ItemMapper itemMapper = sqlSession.getMapper(ItemMapper.class);
			if (itemMapper.checkIfExisting(item) > 0){
				return itemMapper.getItem(item);
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			sqlSession.close();
		}
		return null;
	}

	@Override
	public String updateItem(Item item) {
		// TODO Auto-generated method stub
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try{
			
			ItemMapper itemMapper = sqlSession.getMapper(ItemMapper.class);
			if (itemMapper.checkIfExistingById(item) <= 0){
				return "failed-does-not-exist";
			}
			itemMapper.updateItem(item);
			sqlSession.commit();
			return "success";
			
		}catch(Exception e){
			e.printStackTrace();
			sqlSession.rollback();
		}finally{
			sqlSession.close();
		}
		return "failed-database";
	}

	@Override
	public List<Item> getAllItem() {
		// TODO Auto-generated method stub
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try{
			
			ItemMapper itemMapper = sqlSession.getMapper(ItemMapper.class);
			if (itemMapper.countAllItem() > 0){
				return itemMapper.getAllItem();
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			sqlSession.close();
		}
		return null;
	}

	@Override
	public String deactivateItem(Item item) {
		// TODO Auto-generated method stub
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try{
			
			ItemMapper itemMapper = sqlSession.getMapper(ItemMapper.class);
			if (itemMapper.checkIfExisting(item) <= 0){
				System.out.println("Deactivate -- "+item.getItemId());
				return "failed-does-not-exist";
			}
			itemMapper.deactivateItem(item);
			sqlSession.commit();
			return "success";
			
		}catch(Exception e){
			e.printStackTrace();
			sqlSession.rollback();
		}finally{
			sqlSession.close();
		}
		return "failed-database";
	}

	@Override
	public int getLastItemId() {
		// TODO Auto-generated method stub
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try{
			
			ItemMapper itemMapper = sqlSession.getMapper(ItemMapper.class);
			if (itemMapper.countAllItem() != 0){
				return itemMapper.getLastItemId();
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			sqlSession.close();
		}
		return 0;
	}

	@Override
	public List<Item> searchItemByName(Item item) {
		// TODO Auto-generated method stub
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try{
			
			ItemMapper itemMapper = sqlSession.getMapper(ItemMapper.class);
			return itemMapper.searchItemList(item);
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			sqlSession.close();
		}
		return null;
	}

	@Override
	public int countItem() {
		// TODO Auto-generated method stub
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try{
			
			ItemMapper itemMapper = sqlSession.getMapper(ItemMapper.class);
			return itemMapper.countAllItem();
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			sqlSession.close();
		}
		return 0;
	}

	@Override
	public String createItemCategory(ItemCategory itemCategory) {
		
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try{
			
			ItemMapper itemMapper = sqlSession.getMapper(ItemMapper.class);
			if (itemMapper.checkIfExistingItemCategory(itemCategory) > 0){
				return "failed-existing";
			}
			itemMapper.saveItemCategory(itemCategory);
			sqlSession.commit();
			return "success";
			
		}catch(Exception e){
			e.printStackTrace();
			sqlSession.rollback();
		}finally{
			sqlSession.close();
		}
		return "failed-database";
	}

	@Override
	public List<ItemCategory> getAllItemCategory() {
		
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try{
			
			ItemMapper itemMapper = sqlSession.getMapper(ItemMapper.class);
			return itemMapper.getAllItemCategory();
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			sqlSession.close();
		}
		return null;
	}

}
