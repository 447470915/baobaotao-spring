package test.web;

import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Component;

@Component
/*@Scope("prototype")*/
@Primary
public class SameBeansOne implements SameBeans{
	private int value = 10;
	@Override
	public int getValue() {
		value--;
		return value;
	}

}
