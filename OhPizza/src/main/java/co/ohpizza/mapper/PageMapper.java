package co.ohpizza.mapper;

public interface PageMapper {
	int totalCount(int page);
	int selectTotalCount(int page);
}
