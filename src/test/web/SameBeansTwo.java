package test.web;

import org.springframework.stereotype.Component;

@Component
/*@Scope("prototype")*/
public class SameBeansTwo implements SameBeans{
	private int value = 100;
	@Override
	public int getValue() {
		value--;
		return value;
	}

}
