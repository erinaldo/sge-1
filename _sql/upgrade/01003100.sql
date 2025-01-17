/*------ SYSDBA 31/08/2020 20:53:09 --------*/

COMMENT ON TABLE SYS_LICENCA IS 'Tabela Licenca de Uso

    Autor   :   Isaque Marinho Ribeiro
    Data    :   31/08/2020

Tabela responsavel por armazenar, de forma criptografada, informacoes importantes
referentes a Licenca de Uso do sistema.';




/*------ SYSDBA 11/09/2020 10:29:52 --------*/

CREATE TABLE TBFORNECEDOR_PRODUTO (
    FORNECEDOR_CNPJ DMN_CNPJ_NN NOT NULL,
    FORNECEDOR_PRODUTO DMN_VCHAR_30_NN NOT NULL,
    CD_FORNECEDOR DMN_INTEGER_N,
    CD_PRODUTO DMN_VCHAR_10);

ALTER TABLE TBFORNECEDOR_PRODUTO
ADD CONSTRAINT PK_TBFORNECEDOR_PRODUTO
PRIMARY KEY (FORNECEDOR_CNPJ,FORNECEDOR_PRODUTO);

COMMENT ON COLUMN TBFORNECEDOR_PRODUTO.FORNECEDOR_CNPJ IS
'CPF/CNPJ do Fornecedor';

COMMENT ON COLUMN TBFORNECEDOR_PRODUTO.FORNECEDOR_PRODUTO IS
'Codigo do Produto/Servido na base do fornecedor.

Obs: Esta informacao esta na TAG "CProd" do arquivo XML da NF-e.';

COMMENT ON COLUMN TBFORNECEDOR_PRODUTO.CD_FORNECEDOR IS
'Codigo do Fornecedor no cadastro.';

COMMENT ON COLUMN TBFORNECEDOR_PRODUTO.CD_PRODUTO IS
'Codigo do Produto/Servico no cadastro';




/*------ SYSDBA 11/09/2020 10:29:53 --------*/

COMMENT ON TABLE TBFORNECEDOR_PRODUTO IS 'Tabela Fornecedor x Produto.

    Autor   :   Isaque M. Ribeiro
    Data    :   11/09/2020

Tabera responsavel por armazenar a referencia entre o produto/servico do fornecedor
vindo na nota fiscal e o cadastro do sistema da empresa.


Historico:

    Legendas:
        + Novo objeto de banco (Campos, Triggers)
        - Remocao de objeto de banco
        * Modificacao no objeto de banco

    11/09/2020 - IMR :
        + Criacao e documentacao da tabela.';




/*------ SYSDBA 11/09/2020 10:30:46 --------*/

ALTER TABLE TBFORNECEDOR_PRODUTO
ADD CONSTRAINT FK_TBFORNECEDOR_PRODUTO_FRN
FOREIGN KEY (CD_FORNECEDOR)
REFERENCES TBFORNECEDOR(CODFORN)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE TBFORNECEDOR_PRODUTO
ADD CONSTRAINT FK_TBFORNECEDOR_PRODUTO_PRD
FOREIGN KEY (CD_PRODUTO)
REFERENCES TBPRODUTO(COD)
ON DELETE CASCADE
ON UPDATE CASCADE;

GRANT ALL ON TBFORNECEDOR_PRODUTO TO "PUBLIC";



COMMENT ON COLUMN TBFORNECEDOR_PRODUTO.FORNECEDOR_PRODUTO IS
'Codigo do Produto/Servido na base do fornecedor.

Obs: Esta informacao esta na TAG "CProd" do arquivo XML da NF-e.';




/*------ SYSDBA 22/09/2020 21:53:04 --------*/

CREATE TABLE TBNFE_IMPORTADA (
    EMPRESA DMN_CNPJ_NN NOT NULL,
    NSU DMN_VCHAR_20_NN NOT NULL,
    EMISSOR_CNPJ DMN_CNPJ_NN,
    EMISSOR_CODIGO DMN_INTEGER_N,
    SERIE DMN_VCHAR_04,
    NUMERO DMN_VCHAR_10,
    EMISSAO DMN_DATE,
    VALOR DMN_MONEY,
    PROTOCOLO DMN_VCHAR_20_NN NOT NULL,
    CHAVE DMN_VCHAR_250,
    XML_FILENAME DMN_VCHAR_250,
    XML_FILE DMN_TEXTO,
    USUARIO DMN_USUARIO,
    DATAHORA_IMPORTACAO DMN_DATETIME);

ALTER TABLE TBNFE_IMPORTADA
ADD CONSTRAINT PK_TBNFE_IMPORTADA
PRIMARY KEY (EMPRESA,NSU);

COMMENT ON COLUMN TBNFE_IMPORTADA.EMPRESA IS
'Empresa.';

COMMENT ON COLUMN TBNFE_IMPORTADA.NSU IS
'NSU (Numero Sequencial Unico na Distribuicao DFe).';

COMMENT ON COLUMN TBNFE_IMPORTADA.EMISSOR_CNPJ IS
'CPF/CNPJ do Emissor (Fornecedor).';

COMMENT ON COLUMN TBNFE_IMPORTADA.EMISSOR_CODIGO IS
'Codigo do Emissor (Fornecedor).';

COMMENT ON COLUMN TBNFE_IMPORTADA.SERIE IS
'Serie da NFe.';

COMMENT ON COLUMN TBNFE_IMPORTADA.NUMERO IS
'Numero da NFe.';

COMMENT ON COLUMN TBNFE_IMPORTADA.EMISSAO IS
'Data de Emissao da NFe.';

COMMENT ON COLUMN TBNFE_IMPORTADA.VALOR IS
'Valor da NFe.';

COMMENT ON COLUMN TBNFE_IMPORTADA.PROTOCOLO IS
'Protocolo de autorizacao da NFe.';

COMMENT ON COLUMN TBNFE_IMPORTADA.CHAVE IS
'Chave de acesso.';

COMMENT ON COLUMN TBNFE_IMPORTADA.XML_FILENAME IS
'Nome do arquivo XML.';

COMMENT ON COLUMN TBNFE_IMPORTADA.XML_FILE IS
'Arquivo XML.';




/*------ SYSDBA 22/09/2020 21:53:05 --------*/

COMMENT ON TABLE TBNFE_IMPORTADA IS 'Tabela Notas Fiscais Importadas.

    Autor   :   Isaque M. Ribeiro
    Data    :   22/09/2020

Tabera responsavel por armazenar os arquivos XML de Notas Fiscais Eletronicas
baixados e importados.


Historico:

    Legendas:
        + Novo objeto de banco (Campos, Triggers)
        - Remocao de objeto de banco
        * Modificacao no objeto de banco

    22/09/2020 - IMR :
        + Criacao e documentacao da tabela.';




/*------ SYSDBA 22/09/2020 21:53:43 --------*/

ALTER TABLE TBNFE_IMPORTADA
ADD CONSTRAINT FK_TBNFE_IMPORTADA_EMPRESA
FOREIGN KEY (EMPRESA)
REFERENCES TBEMPRESA(CNPJ);

ALTER TABLE TBNFE_IMPORTADA
ADD CONSTRAINT FK_TBNFE_IMPORTADA_FORNCEDOR
FOREIGN KEY (EMISSOR_CODIGO)
REFERENCES TBFORNECEDOR(CODFORN);




/*------ SYSDBA 22/09/2020 21:55:22 --------*/

CREATE INDEX IDX_TBNFE_IMPORTADA_NFE
ON TBNFE_IMPORTADA (SERIE,NUMERO);

CREATE INDEX IDX_TBNFE_IMPORTADA_USUARIO
ON TBNFE_IMPORTADA (USUARIO);

CREATE INDEX IDX_TBNFE_IMPORTADA_EMISSAO
ON TBNFE_IMPORTADA (EMISSAO);

CREATE INDEX IDX_TBNFE_IMPORTADA_EMISSOR
ON TBNFE_IMPORTADA (EMISSOR_CNPJ);




/*------ SYSDBA 22/09/2020 21:55:40 --------*/

CREATE INDEX IDX_TBNFE_IMPORTADA_CHAVE
ON TBNFE_IMPORTADA (CHAVE);

GRANT ALL ON TBNFE_IMPORTADA TO "PUBLIC";



/*------ SYSDBA 22/09/2020 21:59:34 --------*/

ALTER TABLE TBCOMPRAS
    ADD NFNSU DMN_VCHAR_20;

COMMENT ON COLUMN TBCOMPRAS.NFNSU IS
'NSU da NF-e baixada/importada.';

alter table TBCOMPRAS
alter ANO position 1;

alter table TBCOMPRAS
alter CODCONTROL position 2;

alter table TBCOMPRAS
alter CODEMP position 3;

alter table TBCOMPRAS
alter CODFORN position 4;

alter table TBCOMPRAS
alter TIPO_ENTRADA position 5;

alter table TBCOMPRAS
alter TIPO_DOCUMENTO position 6;

alter table TBCOMPRAS
alter TIPO_MOVIMENTO position 7;

alter table TBCOMPRAS
alter NFNSU position 8;

alter table TBCOMPRAS
alter NF position 9;

alter table TBCOMPRAS
alter NFSERIE position 10;

alter table TBCOMPRAS
alter MODELO_NF position 11;

alter table TBCOMPRAS
alter LOTE_NFE_ANO position 12;

alter table TBCOMPRAS
alter LOTE_NFE_NUMERO position 13;

alter table TBCOMPRAS
alter LOTE_NFE_CODIGO position 14;

alter table TBCOMPRAS
alter LOTE_NFE_RECIBO position 15;

alter table TBCOMPRAS
alter NFE_ENVIADA position 16;

alter table TBCOMPRAS
alter NFE_DENEGADA position 17;

alter table TBCOMPRAS
alter NFE_DENEGADA_MOTIVO position 18;

alter table TBCOMPRAS
alter VERIFICADOR_NFE position 19;

alter table TBCOMPRAS
alter XML_NFE position 20;

alter table TBCOMPRAS
alter XML_NFE_FILENAME position 21;

alter table TBCOMPRAS
alter DTLANCAMENTO position 22;

alter table TBCOMPRAS
alter DTEMISS position 23;

alter table TBCOMPRAS
alter HREMISS position 24;

alter table TBCOMPRAS
alter DTENT position 25;

alter table TBCOMPRAS
alter NFCFOP position 26;

alter table TBCOMPRAS
alter NATUREZA position 27;

alter table TBCOMPRAS
alter STATUS position 28;

alter table TBCOMPRAS
alter CALCULAR_TOTAIS position 29;

alter table TBCOMPRAS
alter IPI position 30;

alter table TBCOMPRAS
alter ICMSBASE position 31;

alter table TBCOMPRAS
alter ICMSVALOR position 32;

alter table TBCOMPRAS
alter ICMSSUBSTBASE position 33;

alter table TBCOMPRAS
alter ICMSSUBSTVALOR position 34;

alter table TBCOMPRAS
alter FRETE position 35;

alter table TBCOMPRAS
alter OUTROSCUSTOS position 36;

alter table TBCOMPRAS
alter DESCONTO position 37;

alter table TBCOMPRAS
alter VALORSEGURO position 38;

alter table TBCOMPRAS
alter VALORTOTAL_II position 39;

alter table TBCOMPRAS
alter VALORTOTAL_IPI position 40;

alter table TBCOMPRAS
alter VALORPIS position 41;

alter table TBCOMPRAS
alter VALORCOFINS position 42;

alter table TBCOMPRAS
alter TOTALPROD position 43;

alter table TBCOMPRAS
alter TOTALNF position 44;

alter table TBCOMPRAS
alter INDEX_VALOR position 45;

alter table TBCOMPRAS
alter OBS position 46;

alter table TBCOMPRAS
alter USUARIO position 47;

alter table TBCOMPRAS
alter FORMAPAGTO_COD position 48;

alter table TBCOMPRAS
alter CONDICAOPAGTO_COD position 49;

alter table TBCOMPRAS
alter COMPRA_PRAZO position 50;

alter table TBCOMPRAS
alter PRAZO_01 position 51;

alter table TBCOMPRAS
alter PRAZO_02 position 52;

alter table TBCOMPRAS
alter PRAZO_03 position 53;

alter table TBCOMPRAS
alter PRAZO_04 position 54;

alter table TBCOMPRAS
alter PRAZO_05 position 55;

alter table TBCOMPRAS
alter PRAZO_06 position 56;

alter table TBCOMPRAS
alter PRAZO_07 position 57;

alter table TBCOMPRAS
alter PRAZO_08 position 58;

alter table TBCOMPRAS
alter PRAZO_09 position 59;

alter table TBCOMPRAS
alter PRAZO_10 position 60;

alter table TBCOMPRAS
alter PRAZO_11 position 61;

alter table TBCOMPRAS
alter PRAZO_12 position 62;

alter table TBCOMPRAS
alter DTFINALIZACAO_COMPRA position 63;

alter table TBCOMPRAS
alter TIPO_DESPESA position 64;

alter table TBCOMPRAS
alter CANCEL_USUARIO position 65;

alter table TBCOMPRAS
alter CANCEL_DATAHORA position 66;

alter table TBCOMPRAS
alter CANCEL_MOTIVO position 67;

alter table TBCOMPRAS
alter AUTORIZACAO_ANO position 68;

alter table TBCOMPRAS
alter AUTORIZACAO_CODIGO position 69;

alter table TBCOMPRAS
alter AUTORIZACAO_EMPRESA position 70;

alter table TBCOMPRAS
alter DNFE_ENTRADA_ANO position 71;

alter table TBCOMPRAS
alter DNFE_ENTRADA_COD position 72;

alter table TBCOMPRAS
alter DNFE_SAIDA_ANO position 73;

alter table TBCOMPRAS
alter DNFE_SAIDA_COD position 74;

alter table TBCOMPRAS
alter DNFE_FORMA position 75;

alter table TBCOMPRAS
alter DNFE_UF position 76;

alter table TBCOMPRAS
alter DNFE_CNPJ_CPF position 77;

alter table TBCOMPRAS
alter DNFE_IE position 78;

alter table TBCOMPRAS
alter DNFE_COMPETENCIA position 79;

alter table TBCOMPRAS
alter DNFE_SERIE position 80;

alter table TBCOMPRAS
alter DNFE_NUMERO position 81;

alter table TBCOMPRAS
alter DNFE_MODELO position 82;

alter table TBCOMPRAS
alter DNFE_CHAVE position 83;

alter table TBCOMPRAS
alter DECF_MODELO position 84;

alter table TBCOMPRAS
alter DECF_NUMERO position 85;

alter table TBCOMPRAS
alter DECF_COO position 86;

alter table TBCOMPRAS
alter CFOP_ALTERA_ESTOQUE position 87;

alter table TBCOMPRAS
alter CFOP_ALTERA_CUSTO position 88;

alter table TBCOMPRAS
alter CFOP_GERA_DUPLICATA position 89;




/*------ SYSDBA 22/09/2020 22:01:11 --------*/

COMMENT ON TABLE TBCOMPRAS IS 'Tabela Entrada (Compras)

    Autor   :   Isaque Marinho Ribeiro
    Data    :   01/01/2013

Tabela responsavel por armazenar todos os registros de movimento de entrada no estoque.


Historico:

    Legendas:
        + Novo objeto de banco (Campos, Triggers)
        - Remocao de objeto de banco
        * Modificacao no objeto de banco

    22/09/2020 - IMR:
        + Criacao do campo NFNSU para armazenar o NSU (Numero Sequencial Unico) da
          Nota Fiscal Eletronica baixada e importada para a tabela TBNFE_IMPORTADA.

    04/09/2019 - IMR:
        + Criacao dos campos CFOP_ALTERA_ESTOQUE, CFOP_ALTERA_CUSTO e CFOP_GERA_DUPLICATA
          para armazenar as as configuracoes da CFOP que influenciam na deducao do estoque,
          alteracao do custo medio do produto e geracao de duplicatas a pagar (Contas A Pagar).

    28/11/2017 - IMR:
        + Cricao do campo INDEX_VALOR para armazenar o valor da compra de forma indexada
          a fim de proporcionar um meio de busca dos registros pelo valor liquido da compra.

    20/05/2014 - IMR :
        + Criacao do campo TIPO_DESPESA para permitir que os registros de Contas A Pagar ja possam ser gerados com o
          devido Tipo de Despesa informado. Este campo passa a ser obrigatorio para uma melhor classificacao das Contas
          A Pagar.

    29/05/2014 - IMR:
        + Criacao dos campos TIPO_ENTRADA e TIPO_DOCUMENTO para que os movimentos de entrada possam ser classificados quanto
          a sua finalidade (Consumo, Producao/Faturamento, Imobilizado, ETC.) e ao tipo de documento usado para efeturar
          essa entrada (Cupom, NF, ETC.).

    04/09/2014 - IMR:
        + Criacao dos campos NFE_DENEGADA e NFE_DENEGADA_MOTIVO para sinalizar as NF-e que foram denegadas na SEFA e
          armazenar o motivo da denegacao.

    30/07/2015 - IMR:
        + Criacao do campo CALCULAR_TOTAIS para que o sistema possa, atraves dele, calcular de forma automatica os valores
          totais que compoem o registro de entrada de Produtos e/ou Servicos.';




/*------ SYSDBA 22/09/2020 22:02:40 --------*/

ALTER TABLE TBCOMPRAS
ADD CONSTRAINT FK_TBCOMPRAS_NFE_IMPORTADA
FOREIGN KEY (CODEMP,NFNSU)
REFERENCES TBNFE_IMPORTADA(EMPRESA,NSU);


/*------ SYSDBA 30/09/2020 19:13:27 --------*/

SET TERM ^ ;

CREATE OR ALTER trigger tg_compras_ver_nfe_importada for tbcompras
active before insert or update position 11
AS
begin
  if (not exists(
    Select
      n.emissor_cnpj
    from TBNFE_IMPORTADA n
    where (n.empresa = new.codemp)
      and (n.nsu     = new.nfnsu)
  )) then
    new.nfnsu = null;
  else
  begin
    Select
        n.chave
      , n.xml_file
      , n.xml_filename
    from TBNFE_IMPORTADA n
    where (n.empresa = new.codemp)
      and (n.nsu     = new.nfnsu)
    Into
        new.verificador_nfe
      , new.xml_nfe
      , new.xml_nfe_filename;
  end
end
^

SET TERM ; ^

/*------ SYSDBA 28/09/2020 19:25:01 --------*/

COMMENT ON TRIGGER TG_COMPRAS_VER_NFE_IMPORTADA IS 'Trigger Verificar Nota Fiscal Importada (Entrada).

    Autor   :   Isaque Marinho Ribeiro
    Data    :   22/09/2020

Trigger responsavel por verificar, atraves do NSU, a existencia da nota fiscal
eletronica importada. Caso ela nao exista, o campo NSU recebera um valor NULL
para evitar erro de integridade referencial. Com sua identificacao, o arquivo
XML da nota importada e trasido para o registro de compra.


Historico:

    Legendas:
        + Novo objeto de banco (Campos, Triggers)
        - Remocao de objeto de banco
        * Modificacao no objeto de banco

    22/09/2020 - IMR:
        * Documentacao do objeto.';






/*------ SYSDBA 30/09/2020 19:16:55 --------*/

SET TERM ^ ;

CREATE OR ALTER trigger tg_compras_ver_nfe_importada for tbcompras
active before insert or update position 11
AS
begin
  if (not exists(
    Select
      n.emissor_cnpj
    from TBNFE_IMPORTADA n
    where (n.empresa = new.codemp)
      and (n.nsu     = new.nfnsu)
  )) then
    new.nfnsu = null;
  else
  begin
    Select
        n.chave
      , n.xml_file
      , n.xml_filename
    from TBNFE_IMPORTADA n
    where (n.empresa = new.codemp)
      and (n.nsu     = new.nfnsu)
    Into
        new.verificador_nfe
      , new.xml_nfe
      , new.xml_nfe_filename;
  end
end
^

SET TERM ; ^




/*------ SYSDBA 22/10/2020 14:22:25 --------*/

CREATE DOMAIN DMN_VCHAR_150_NN AS
VARCHAR(150)
NOT NULL;


/*------ SYSDBA 22/10/2020 14:23:50 --------*/

CREATE TABLE SYS_USUARIO (
    ID_USUARIO DMN_GUID_38_NN NOT NULL,
    NM_USUARIO DMN_VCHAR_100,
    DS_EMAIL DMN_VCHAR_150_NN,
    DS_SENHA DMN_VCHAR_250,
    NR_CPF DMN_VCHAR_20,
    SN_ATIVO DMN_LOGICO);

ALTER TABLE SYS_USUARIO
ADD CONSTRAINT PK_SYS_USUARIO
PRIMARY KEY (ID_USUARIO);

COMMENT ON COLUMN SYS_USUARIO.ID_USUARIO IS
'ID';

COMMENT ON COLUMN SYS_USUARIO.NM_USUARIO IS
'Nome completo';

COMMENT ON COLUMN SYS_USUARIO.DS_EMAIL IS
'E-mail';

COMMENT ON COLUMN SYS_USUARIO.DS_SENHA IS
'Senha';

COMMENT ON COLUMN SYS_USUARIO.NR_CPF IS
'Numero CPF';

COMMENT ON COLUMN SYS_USUARIO.SN_ATIVO IS
'Ativo:
0 - Nao
1 - Sim';




/*------ SYSDBA 22/10/2020 14:23:51 --------*/

COMMENT ON TABLE SYS_USUARIO IS 'Tabela de Usuarios App (Forca de Vendas)

    Autor   :   Isaque M. Ribeiro
    Data    :   22/10/2020

Tabela responsavel por armazenar os regitros de usuarios habilitados para usar
o aplicativo forca de venda "Venda Simples".


Historico:

    Legendas:
        + Novo objeto de banco (Campos, Triggers)
        - Remocao de objeto de banco
        * Modificacao no objeto de banco

    22/10/2020 - IMR :
        + Criacao e documentacao da tabela.';

GRANT ALL ON SYS_USUARIO TO "PUBLIC";



/*------ SYSDBA 22/10/2020 14:24:18 --------*/

ALTER TABLE SYS_USUARIO
ADD CONSTRAINT UNQ_SYS_USUARIO_EMAIL
UNIQUE (DS_EMAIL);




/*------ SYSDBA 22/10/2020 14:25:31 --------*/

ALTER TABLE TBUSERS
    ADD USUARIO_APP_ID DMN_GUID_38;

COMMENT ON COLUMN TBUSERS.USUARIO_APP_ID IS
'Usuario no App "Venda Simples"';




/*------ SYSDBA 22/10/2020 14:30:19 --------*/

SET TERM ^ ;

CREATE trigger tg_users_app for tbusers
active before insert or update position 0
AS
begin
  if (not exists(
    Select
      u.id_usuario
    from SYS_USUARIO u
    where u.id_usuario = coalesce(new.usuario_app_id, '')
  )) then
    new.usuario_app_id = null;
end
^

SET TERM ; ^

COMMENT ON TRIGGER TG_USERS_APP IS 'Trigger Identificar Usuario (Forca de Venda)

    Autor   :   Isaque M. Ribeiro
    Data    :   22/10/2020

Trigger responsavel por buscar o ID informado na tabela de usuarios do app
"Venda Simples", caso ele nao exista, remove a relacao para evitar violacao de
chave estrangeira.';




/*------ SYSDBA 22/10/2020 14:31:10 --------*/

ALTER TABLE TBUSERS
ADD CONSTRAINT FK_TBUSERS_USER_APP
FOREIGN KEY (USUARIO_APP_ID)
REFERENCES SYS_USUARIO(ID_USUARIO)
ON DELETE SET NULL;




/*------ SYSDBA 22/10/2020 14:34:00 --------*/

CREATE TABLE SYS_USUARIO_DISPOSITIVO (
    ID_USUARIO DMN_GUID_38_NN NOT NULL,
    NR_CELULAR DMN_VCHAR_20,
    ID_DISPOSITIVO DMN_VCHAR_250,
    TK_DISPOSITIVO DMN_VCHAR_250);

ALTER TABLE SYS_USUARIO_DISPOSITIVO
ADD CONSTRAINT PK_SYS_USUARIO_DISPOSITIVO
PRIMARY KEY (ID_USUARIO);

COMMENT ON COLUMN SYS_USUARIO_DISPOSITIVO.ID_USUARIO IS
'Usuario';

COMMENT ON COLUMN SYS_USUARIO_DISPOSITIVO.NR_CELULAR IS
'Numero do Celular';

COMMENT ON COLUMN SYS_USUARIO_DISPOSITIVO.ID_DISPOSITIVO IS
'Id do dispositivo';

COMMENT ON COLUMN SYS_USUARIO_DISPOSITIVO.TK_DISPOSITIVO IS
'Token do dispositivo';




/*------ SYSDBA 22/10/2020 14:34:01 --------*/

COMMENT ON TABLE SYS_USUARIO_DISPOSITIVO IS 'Tabela de Usuarios App x Dispositivos (Forca de Vendas)

    Autor   :   Isaque M. Ribeiro
    Data    :   22/10/2020

Tabela responsavel por armazenar os regitros de dispositivos dos usuarios habilitados
para usar o aplicativo forca de venda "Venda Simples".


Historico:

    Legendas:
        + Novo objeto de banco (Campos, Triggers)
        - Remocao de objeto de banco
        * Modificacao no objeto de banco

    22/10/2020 - IMR :
        + Criacao e documentacao da tabela.';




/*------ SYSDBA 22/10/2020 14:34:31 --------*/

ALTER TABLE SYS_USUARIO_DISPOSITIVO
ADD CONSTRAINT FK_SYS_USUARIO_DISPOSITIVO
FOREIGN KEY (ID_USUARIO)
REFERENCES SYS_USUARIO(ID_USUARIO)
ON DELETE CASCADE
ON UPDATE CASCADE;

GRANT ALL ON SYS_USUARIO_DISPOSITIVO TO "PUBLIC";



/*------ SYSDBA 22/10/2020 14:36:01 --------*/

ALTER TABLE TBVENDEDOR
    ADD EMAIL DMN_VCHAR_150;

COMMENT ON COLUMN TBVENDEDOR.EMAIL IS
'E-mail';

alter table TBVENDEDOR
alter COD position 1;

alter table TBVENDEDOR
alter NOME position 2;

alter table TBVENDEDOR
alter CPF position 3;

alter table TBVENDEDOR
alter EMAIL position 4;

alter table TBVENDEDOR
alter COMISSAO_TIPO position 5;

alter table TBVENDEDOR
alter COMISSAO position 6;

alter table TBVENDEDOR
alter COMISSAO_VL position 7;

alter table TBVENDEDOR
alter TIPO position 8;

alter table TBVENDEDOR
alter ATIVO position 9;




/*------ SYSDBA 22/10/2020 14:37:45 --------*/

COMMENT ON TABLE TBVENDEDOR IS 'Tabela de Vendedores/Tecnicos

    Autor   :   Isaque Marinho Ribeiro
    Data    :   21/09/2015

Tabela responsavel por armazenar os dados referentes aos clientes mantidos pelos sistemas de gestao.


Historico:

    Legendas:
        + Novo objeto de banco (Campos, Triggers)
        - Remocao de objeto de banco
        * Modificacao no objeto de banco

    22/10/2020 - IMR :
        + Criacao dos campos EMAIL para estabelecer integracao do cadastro do(a)
          vendedor(a) e seu registro de acesso no aplicativo de forca de venda
          "Venda Simples".

    21/09/2015 - IMR :
        + Criacao dos campos TIPO para definir o tipo de registro, sendo que o tipo
          0 (zero) esta definido como padrao.';




/*------ SYSDBA 22/10/2020 17:14:32 --------*/

SET TERM ^ ;

CREATE trigger tg_vendedor_email for tbvendedor
active before insert or update position 1
AS
  declare variable id DMN_GUID_38;
  declare variable email DMN_VCHAR_150;
begin
  if (coalesce(new.email, '') <> '') then
  begin
    -- Padronizar formato do e-mail
    email = lower(trim(new.email));

    -- Buscar ID do usuario app pelo e-mail
    Select
      u.id_usuario
    from SYS_USUARIO u
    where u.ds_email = :email
    Into
      id;

    -- Gerar ID caso o e-mail/usuario nao esteja cadastrado
    if (coalesce(:id, '') = '') then
    begin
      Select
        g.hex_uuid_format
      from GET_GUID_UUID_HEX g
      Into
        id;
    end

    -- Inserir/atualizar cadastro do vendedor como usuario do app "Venda Simples"

  end
end
^

SET TERM ; ^




/*------ SYSDBA 22/10/2020 17:15:28 --------*/

CREATE INDEX IDX_TBVENDEDOR_CPF
ON TBVENDEDOR (CPF);

CREATE INDEX IDX_TBVENDEDOR_EMAIL
ON TBVENDEDOR (EMAIL);




/*------ SYSDBA 22/10/2020 17:20:01 --------*/

SET TERM ^ ;

CREATE OR ALTER trigger tg_vendedor_email for tbvendedor
active before insert or update position 1
AS
  declare variable id DMN_GUID_38;
  declare variable email DMN_VCHAR_150;
begin
  if (coalesce(new.email, '') <> '') then
  begin
    -- Padronizar formato do e-mail
    email = lower(trim(new.email));

    -- Buscar ID do usuario app pelo e-mail
    Select
      u.id_usuario
    from SYS_USUARIO u
    where u.ds_email = :email
    Into
      id;

    -- Gerar ID caso o e-mail/usuario nao esteja cadastrado
    if (coalesce(:id, '') = '') then
    begin
      Select
        g.hex_uuid_format
      from GET_GUID_UUID_HEX g
      Into
        id;
    end

    -- Inserir/atualizar cadastro do vendedor como usuario do app "Venda Simples"
    UPDATE OR INSERT INTO SYS_USUARIO (
        id_usuario
      , nm_usuario
      , ds_email
      , nr_cpf
      , sn_ativo
    ) values (
        :id
      , new.nome
      , :email
      , new.cpf
      , new.ativo
    ) MATCHING ( id_usuario );
  end
end
^

SET TERM ; ^




/*------ SYSDBA 22/10/2020 17:21:50 --------*/

SET TERM ^ ;

CREATE OR ALTER procedure SET_VENDEDOR_FUNCIONARIO (
    NOME_COMPLETO DMN_NOME,
    CPF DMN_CPF,
    EMAIL DMN_VCHAR_150,
    ATIVO DMN_LOGICO)
returns (
    CODIGO_VENDEDOR DMN_INTEGER_N)
as
begin
  -- Buscar codigo do vendedor de acordo com o CPF
  Select first 1
    v.cod
  from TBVENDEDOR v
  where v.cpf = :cpf
  Into
    codigo_vendedor;

  if ( coalesce(:codigo_vendedor, 0) = 0 ) then
  begin
    -- Gerar codigo para o novo registro de vendedor
    Select
      max(v.cod)
    from TBVENDEDOR v
    Into
      codigo_vendedor;

    codigo_vendedor = coalesce(:codigo_vendedor, 0) + 1;

    Insert Into TBVENDEDOR (
        cod
      , nome
      , cpf
      , email
      , ativo
    ) values (
        :codigo_vendedor
      , :nome_completo
      , :cpf
      , :email
      , :ativo
    );
  end 

  suspend;
end
^

SET TERM ; ^




/*------ SYSDBA 22/10/2020 17:22:25 --------*/

SET TERM ^ ;

CREATE OR ALTER procedure SET_VENDEDOR_FUNCIONARIO (
    NOME_COMPLETO DMN_NOME,
    CPF DMN_CPF,
    EMAIL DMN_VCHAR_150,
    ATIVO DMN_LOGICO)
returns (
    CODIGO_VENDEDOR DMN_INTEGER_N)
as
begin
  -- Buscar codigo do vendedor de acordo com o CPF
  Select first 1
    v.cod
  from TBVENDEDOR v
  where v.cpf = :cpf
  Into
    codigo_vendedor;

  if ( coalesce(:codigo_vendedor, 0) = 0 ) then
  begin
    -- Gerar codigo para o novo registro de vendedor
    Select
      max(v.cod)
    from TBVENDEDOR v
    Into
      codigo_vendedor;

    codigo_vendedor = coalesce(:codigo_vendedor, 0) + 1;

    Insert Into TBVENDEDOR (
        cod
      , nome
      , cpf
      , email
      , ativo
    ) values (
        :codigo_vendedor
      , :nome_completo
      , :cpf
      , :email
      , :ativo
    );
  end 

  suspend;
end
^

SET TERM ; ^

COMMENT ON PROCEDURE SET_VENDEDOR_FUNCIONARIO IS 'Procedure SET Vendedor x Funcionario.

    Autor   :   Isaque Marinho Ribeiro
    Data    :   11/03/2015

Store procedure responsavel por cadastrar gerar um registro de vendedor correspondente ao CPF do funcionario
informado atraves do sistema SGI.


Historico:

    Legendas:
        + Novo objeto de banco (Campos, Triggers)
        - Remocao de objeto de banco
        * Modificacao no objeto de banco

    22/10/2020 - IMR :
        + Inclusao do parametro EMAIL.

    12/03/2015 - IMR :
        * Documentacao da procedure.';




/*------ SYSDBA 22/10/2020 17:24:26 --------*/

SET TERM ^ ;

CREATE OR ALTER trigger tg_vendedor_email for tbvendedor
active before insert or update position 1
AS
  declare variable id DMN_GUID_38;
  declare variable email DMN_VCHAR_150;
begin
  if (coalesce(new.email, '') <> '') then
  begin
    -- Padronizar formato do e-mail
    email = lower(trim(new.email));

    -- Buscar ID do usuario app pelo e-mail
    Select
      u.id_usuario
    from SYS_USUARIO u
    where u.ds_email = :email
    Into
      id;

    -- Gerar ID caso o e-mail/usuario nao esteja cadastrado
    if (coalesce(:id, '') = '') then
    begin
      Select
        g.hex_uuid_format
      from GET_GUID_UUID_HEX g
      Into
        id;
    end

    -- Inserir/atualizar cadastro do vendedor como usuario do app "Venda Simples"
    UPDATE OR INSERT INTO SYS_USUARIO (
        id_usuario
      , nm_usuario
      , ds_email
      , nr_cpf
      , sn_ativo
    ) values (
        :id
      , new.nome
      , :email
      , new.cpf
      , new.ativo
    ) MATCHING ( id_usuario );
  end
end
^

SET TERM ; ^

COMMENT ON TRIGGER TG_VENDEDOR_EMAIL IS 'Trigger Cadastrar E-mail/Usuario (Forca de Venda)

    Autor   :   Isaque M. Ribeiro
    Data    :   22/10/2020

Trigger responsavel por gerar um usuario para o app forca de venda "Venda Simples"
com os dados do vendedor, quanto este for inserido ou atualizado.';




/*------ SYSDBA 22/10/2020 18:02:19 --------*/

SET TERM ^ ;

CREATE OR ALTER trigger tg_users_app for tbusers
active before insert or update position 0
AS
begin
  -- Identificar ID do usuario app
  if ((coalesce(new.vendedor, 0) > 0) and (coalesce(new.usuario_app_id, '') <> '')) then
  begin
    Select
      u.id_usuario
    from TBVENDEDOR v
      inner join SYS_USUARIO u on (u.ds_email = v.email)
    where (v.cod = coalesce(new.vendedor, 0))
      and (v.email is not null)
    Into
      new.usuario_app_id;
  end

  -- Garantir integridade referencial
  if (not exists(
    Select
      u.id_usuario
    from SYS_USUARIO u
    where u.id_usuario = coalesce(new.usuario_app_id, '')
  )) then
    new.usuario_app_id = null;
end
^

SET TERM ; ^




/*------ SYSDBA 22/10/2020 18:02:44 --------*/

SET TERM ^ ;

CREATE OR ALTER trigger tg_users_app for tbusers
active before insert or update position 0
AS
begin
  -- Identificar ID do usuario app
  if ((coalesce(new.vendedor, 0) > 0) and (coalesce(new.usuario_app_id, '') = '')) then
  begin
    Select
      u.id_usuario
    from TBVENDEDOR v
      inner join SYS_USUARIO u on (u.ds_email = v.email)
    where (v.cod = coalesce(new.vendedor, 0))
      and (v.email is not null)
    Into
      new.usuario_app_id;
  end

  -- Garantir integridade referencial
  if (not exists(
    Select
      u.id_usuario
    from SYS_USUARIO u
    where u.id_usuario = coalesce(new.usuario_app_id, '')
  )) then
    new.usuario_app_id = null;
end
^

SET TERM ; ^

