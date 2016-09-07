package br.com.daniel.util;

import java.util.Collection;

import br.com.daniel.domain.BaseEntity;

public abstract class Check {
	
	private Check() {
	}
	
	public static boolean isNotNull(Object object) {
		return object != null;
	}
	
	public static boolean isNull(Object object) {
		return object == null;
	}
	
	public static boolean isNewEntity(Object object) {
		if (isNotNull(object) && object instanceof BaseEntity) {
			return ((BaseEntity) object).getId() == null;
		}
		return Boolean.FALSE;
	}
	
	public static boolean isEntity(Object object) {
		return !isNewEntity(object);
	}
	
	public static boolean isEmpty(Object object) {
		if (isNull(object)) {
			return Boolean.FALSE;
		}
		
		if (object instanceof Collection) {
			return ((Collection<?>) object).isEmpty();
		} else if (object instanceof String) {
			return ((String) object).trim().isEmpty();
		}
		
		return Boolean.FALSE;
	}
	
	public static boolean isNotEmpty(Object object) {
		return !isEmpty(object);
	}
	
}
