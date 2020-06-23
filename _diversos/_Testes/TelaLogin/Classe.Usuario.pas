unit Classe.Usuario;

interface

Uses
  System.SysUtils,
  Classe.Pessoa, Classe.PessoaFisica, Classe.PessoaJuridica, Classe.Funcao,
  Interacao.Pessoa, Interacao.Usuario, Interacao.Funcao;

type
  TUsuario = class(TPessoa, IUsuarioModel)
    private
      FLogin  ,
      FSenha  : String;
      FFuncao : IFuncao;
      FLogado ,
      FAlterarValorVenda : Boolean;
      FVendedor : IPessoaFisicaModel;
      FEmpresa  : IPessoaJuridicaModel;

      function Login(const Value: String) : IUsuarioModel; overload;
      function Login : String; overload;

      function Senha(const Value: String) : IUsuarioModel; overload;
      function Senha : String; overload;

      function Funcao(const Value: Integer) : IUsuarioModel; overload;
      function Funcao(const Value: IFuncao) : IUsuarioModel; overload;
      function Funcao : IFuncao; overload;

      function Empresa(const aCNPJ: String) : IUsuarioModel; overload;
      function Empresa(const Value: IPessoaJuridicaModel)  : IUsuarioModel; overload;
      function Empresa : IPessoaJuridicaModel; overload;

      function Vendedor(const aCodigo: Integer) : IUsuarioModel; overload;
      function Vendedor(const Value: IPessoaFisicaModel) : IUsuarioModel; overload;
      function Vendedor : IPessoaFisicaModel; overload;

      function Logado(const Value: Boolean)  : IUsuarioModel; overload;
      function Logado : Boolean; overload;

      function AlterarValorVenda(const Value: Boolean)  : IUsuarioModel; overload;
      function AlterarValorVenda : Boolean; overload;
    public
      constructor Create;
      destructor Destroy; override;

      class function New : IUsuarioModel;
  end;

implementation


{ TUsuario }

function TUsuario.AlterarValorVenda: Boolean;
begin
  Result := FAlterarValorVenda;
end;

function TUsuario.AlterarValorVenda(const Value: Boolean): IUsuarioModel;
begin
  Result := Self;
  FAlterarValorVenda := Value;
end;

constructor TUsuario.Create;
begin
  inherited Create;
  FLogin  := EmptyStr;
  FSenha  := EmptyStr;
  FLogado := False;
  FAlterarValorVenda := False;

  FFuncao   := TFuncao.New;
  FVendedor := TPessoaFisica.New;
  FEmpresa  := TPessoaJuridica.New;
end;

destructor TUsuario.Destroy;
begin
  inherited;
end;

function TUsuario.Empresa: IPessoaJuridicaModel;
begin
  Result := FEmpresa;
end;

function TUsuario.Empresa(const Value: IPessoaJuridicaModel): IUsuarioModel;
begin
  Result   := Self;
  FEmpresa := Value;
end;

function TUsuario.Funcao(const Value: Integer): IUsuarioModel;
begin
  Result := Self;
  FFuncao.Codigo(Value);
end;

function TUsuario.Funcao(const Value: IFuncao): IUsuarioModel;
begin
  Result  := Self;
  FFuncao := Value;
end;

function TUsuario.Empresa(const aCNPJ: String): IUsuarioModel;
begin
  if aCNPJ.Trim().Equals(EmptyStr) then
    raise Exception.Create('Empresa n�o informada');

  Result := Self;
  FEmpresa.CNPJ(aCNPJ);
end;

function TUsuario.Logado: Boolean;
begin
  Result := FLogado;
end;

function TUsuario.Logado(const Value: Boolean): IUsuarioModel;
begin
  Result  := Self;
  FLogado := Value;
end;

function TUsuario.Login: String;
begin
  Result := FLogin;
end;

class function TUsuario.New: IUsuarioModel;
begin
  Result := Self.Create;
end;

function TUsuario.Login(const Value: String): IUsuarioModel;
begin
  if Value.Trim().Equals(EmptyStr) then
    raise Exception.Create('Login n�o informado');

  Result := Self;
  FLogin := Value.Trim().ToLower();
end;

function TUsuario.Senha(const Value: String): IUsuarioModel;
begin
  if Value.Trim().Equals(EmptyStr) then
    raise Exception.Create('Senha n�o informada');

  Result := Self;
  FLogin := Value.Trim();
end;

function TUsuario.Senha: String;
begin
  Result := FSenha;
end;

function TUsuario.Vendedor: IPessoaFisicaModel;
begin
  Result := FVendedor;
end;

function TUsuario.Vendedor(const aCodigo: Integer): IUsuarioModel;
begin
  Result := Self;
  FVendedor.Codigo(aCodigo);
end;

function TUsuario.Vendedor(const Value: IPessoaFisicaModel): IUsuarioModel;
begin
  Result    := Self;
  FVendedor := Value;
end;

function TUsuario.Funcao: IFuncao;
begin
  Result := FFuncao;
end;

end.
