<?

function productListTemplate($r,$o) {
	return $r.<<<HTML
<div class="col-xs-6 col-md-4 col-lg-3">
<a href="product_item.php?id=$o->id" class="product-item card card-soft card-light card-flat">
	<div class="image-square">
		<img src="img/store/$o->main_image" alt="">
	</div>
	<div class="product-description">
		<div>$o->title</div>
		<div>&dollar;$o->price</div>
	</div>
</a>
</div>
HTML;
}

function cartListTemplate($r,$o) {
	$price = number_format($o->price,2,'.','');
	$total = number_format($o->total,2,'.','');
return $r.<<<HTML
<div class="display-flex">
	<div class="flex-none" style="width: 6em;">
		<a href="product_item.php?id=$o->id" class="display-block">
			<div class="image-square">
				<img src="img/store/$o->main_image" alt="">
			</div>
		</a>
	</div>
	<div class="product-descriptiion flex-stretch">
		<div class="display-flex">
			<div class="flex-stretch">
				<strong style="font-size: 1.25em;">$o->title</strong>
			</div>
		</div>
		<div><strong>Amount</strong> $o->amount</div>

		<div><strong>Price</strong> &dollar;$price</div>
	</div>
</div>
HTML;
}


function cartTotals($tax=false) {

$cartitems = getCartTotalItems();
$cartprice = getCartTotalPrice();

$pricedfixed = number_format($cartprice, 2, '.', '');
$taxfixed = number_format($cartprice*0.0725, 2, '.', '');
$taxedfixed = number_format($cartprice*1.0725, 2, '.', '');

$output = <<<HTML
<div class="card-section display-flex">
	<div class="flex-stretch">Subtotal ($cartitems):</div>
	<div class="flex-none">&dollar;$pricedfixed</div>
</div>
HTML;


$outputtaxed = <<<HTML
<div class="card-section display-flex">
	<div class="flex-stretch">Taxes:</div>
	<div class="flex-none">&dollar;$taxfixed</div>
</div>

<div class="card-section display-flex">
	<div class="flex-stretch">Total:</div>
	<div class="flex-none">&dollar;$taxedfixed</div>
</div>
HTML;

return $output.($tax?$outputtaxed:'');         

}

?>