document.addEventListener('DOMContentLoaded', function() {
	const valor_inicial = document.getElementById("inputMain");
	const valor_final = document.getElementById("resultado");
	let alternativas = ["café da manhã", "almoço", "jantar"];


	valor_inicial.addEventListener("input", function() {
		const valor_digitado = valor_inicial.value.trim().toLocaleLowerCase();
		let conclusao = "";

		switch (true) {
			case valor_digitado.includes("pao com ovo") || valor_digitado.includes("pão com ovo"):
				conclusao = alternativas[0];
				break;
			case valor_digitado.includes("feijao com arroz") || valor_digitado.includes("feijão com arroz"):
				conclusao = alternativas[1];
				break;
			default:
				conclusao = alternativas[2];
				break;
		}

		valor_final.textContent = conclusao;



	});

})
