unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Menus, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Label2: TLabel;
    ST1: TButton;
    RA1: TButton;
    UP1: TButton;
    jaka_postac1: TLabel;
    jaka_postac2: TLabel;
    Label1: TLabel;


    ZK: TButton;
    ST: TButton;
    RA: TButton;
    UP: TButton;
    Dzielenie: TButton;
    jaka_postac: TLabel;
    Wynik: TLabel;
    Mnozenie: TButton;
    Dodawanie: TButton;
    Odejmowanie: TButton;
    Liczba_1: TEdit;
    Liczba_2: TEdit;
    Podaj_dwie_liczby: TLabel;
    procedure RA1Click(Sender: TObject);
    procedure ST1Click(Sender: TObject);
    procedure DzielenieClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure jaka_postacClick(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure RAClick(Sender: TObject);
    procedure UP1Click(Sender: TObject);
    procedure UPClick(Sender: TObject);
    procedure WynikClick(Sender: TObject);
    procedure ZKClick(Sender: TObject);
    procedure STClick(Sender: TObject);
    procedure DodawanieClick(Sender: TObject);
    procedure MnozenieClick(Sender: TObject);
    procedure OdejmowanieClick(Sender: TObject);
    procedure Liczba_1Change(Sender: TObject);
    procedure Liczba_2Change(Sender: TObject);
    procedure Podaj_dwie_liczbyClick(Sender: TObject);

  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}


{ TForm1 }
var

     Re_1, Re_2 , Im_1, Im_2, liczba1, liczba2  ,wwynik:string;
     Wynik_Re, Wynik_Im : double;

     z , cos , sin: double;
     wariant : integer;

procedure TForm1.Liczba_1Change(Sender: TObject);
    var i,x : integer;
        znak, cz_rz, cz_ur : string;
begin
    liczba1:= Liczba_1.text;
    cz_rz:='';
    cz_ur:='';
    znak:='';
    x:=length(liczba1);
    for i:=1 to x-1 do begin

      if((i<>1 ) AND ((liczba1[i]='+') OR  (liczba1[i]='-')))then znak:=liczba1[i]
      else  if(znak='')then cz_rz:=cz_rz+liczba1[i]
            else if(znak<>'') then cz_ur:=cz_ur+liczba1[i];
    end;
     Re_1:=cz_rz;
     Im_1:=znak+cz_ur;
end;

procedure TForm1.Liczba_2Change(Sender: TObject);
          var i,x : integer;
      znak, cz_rz, cz_ur : string;
begin
     liczba2:= Liczba_2.text;
    cz_rz:='';
    cz_ur:='';
    znak:='';
    x:=length(liczba2);
    for i:=1 to x-1 do begin
       if((i<>1 ) AND ((liczba2[i]='+') OR  (liczba2[i]='-')))then znak:=liczba2[i]
      else  if(znak='')then cz_rz:=cz_rz+liczba2[i]
            else if(znak<>'') then cz_ur:=cz_ur+liczba2[i];
    end;
     Re_2:=cz_rz;
     Im_2:=znak+cz_ur;
end;

procedure TForm1.DodawanieClick(Sender: TObject);
begin
         Wynik_Re:=StrToFloat(Re_1)+ StrToFloat(Re_2);
         Wynik_Im:=StrToFloat(Im_1)+ StrToFloat(Im_2);

            if ((Wynik_Re=0) AND( Wynik_Im>0)) then   wariant:=1
            else if  (( Wynik_Re=0) and (Wynik_Im<0)) then wariant:=2
                 else if (( Wynik_Re>0) and (Wynik_Im=0)) then   wariant:=3
                      else if (( Wynik_Re<0) and (Wynik_Im=0)) then   wariant:=4

                            else if (( Wynik_Re>0) and (Wynik_Im>0)) then   wariant:=5
                                  else if (( Wynik_Re>0) and (Wynik_Im<0)) then   wariant:=6

                                        else if (( Wynik_Re<0) and (Wynik_Im>0)) then   wariant:=7
                                             else if (( Wynik_Re<0) and (Wynik_Im<0)) then   wariant:=8;
end;

procedure TForm1.OdejmowanieClick(Sender: TObject);
begin
        Wynik_Re:=StrToFloat(Re_1)- StrToFloat(Re_2);
        Wynik_Im:=StrToFloat(Im_1)- StrToFloat(Im_2);

           if ((Wynik_Re=0) AND( Wynik_Im>0)) then   wariant:=1
            else if  (( Wynik_Re=0) and (Wynik_Im<0)) then wariant:=2
                 else if (( Wynik_Re>0) and (Wynik_Im=0)) then   wariant:=3
                      else if (( Wynik_Re<0) and (Wynik_Im=0)) then   wariant:=4

                            else if (( Wynik_Re>0) and (Wynik_Im>0)) then   wariant:=5
                                  else if (( Wynik_Re>0) and (Wynik_Im<0)) then   wariant:=6

                                        else if (( Wynik_Re<0) and (Wynik_Im>0)) then   wariant:=7
                                             else if (( Wynik_Re<0) and (Wynik_Im<0)) then   wariant:=8;
end;

procedure TForm1.MnozenieClick(Sender: TObject);
begin
           Wynik_Re:= StrToFloat(Re_1)* StrToFloat(Re_2) - StrToFloat(Im_1)* StrToFloat(Im_2);
           Wynik_Im:= StrToFloat(Re_1)* StrToFloat(Im_2) + StrToFloat(Re_2)* StrToFloat(Im_1);

           if( ( StrToFloat(Re_2)=0) AND (StrToFloat(Im_2)=0)) then wariant:= 10
           else  if ((Wynik_Re=0) AND( Wynik_Im>0)) then   wariant:=1
            else if  (( Wynik_Re=0) and (Wynik_Im<0)) then wariant:=2
                 else if (( Wynik_Re>0) and (Wynik_Im=0)) then   wariant:=3
                      else if (( Wynik_Re<0) and (Wynik_Im=0)) then   wariant:=4

                            else if (( Wynik_Re>0) and (Wynik_Im>0)) then   wariant:=5
                                  else if (( Wynik_Re>0) and (Wynik_Im<0)) then   wariant:=6

                                        else if (( Wynik_Re<0) and (Wynik_Im>0)) then   wariant:=7
                                             else if (( Wynik_Re<0) and (Wynik_Im<0)) then   wariant:=8;
end;

procedure TForm1.DzielenieClick(Sender: TObject);
         var  dol, gora_Re ,gora_Im : double;

begin

    if( ( StrToFloat(Re_2)=0) AND (StrToFloat(Im_2)=0)) then wariant:= 9
    else begin
          dol := StrToFloat(Re_2)*StrToFloat(Re_2)+ StrToFloat(Im_2)*StrToFloat(Im_2);

          gora_Re:= StrToFloat(Re_1)* StrToFloat(Re_2) - (StrToFloat(Im_1)*(-1)*StrToFloat(Im_2));
          gora_Im:= StrToFloat(Re_1)* (-1)* StrToFloat(Im_2) + StrToFloat(Re_2)* StrToFloat(Im_1);

          Wynik_Im :=gora_Im/dol;
          Wynik_Re :=gora_Re/dol;

              if ((Wynik_Re=0) AND( Wynik_Im>0)) then   wariant:=1
            else if  (( Wynik_Re=0) and (Wynik_Im<0)) then wariant:=2
                 else if (( Wynik_Re>0) and (Wynik_Im=0)) then   wariant:=3
                      else if (( Wynik_Re<0) and (Wynik_Im=0)) then   wariant:=4

                            else if (( Wynik_Re>0) and (Wynik_Im>0)) then   wariant:=5
                                  else if (( Wynik_Re>0) and (Wynik_Im<0)) then   wariant:=6

                                        else if (( Wynik_Re<0) and (Wynik_Im>0)) then   wariant:=7
                                             else if (( Wynik_Re<0) and (Wynik_Im<0)) then   wariant:=8;
          end;





end;

  /// Zapis kartezjanski
procedure TForm1.ZKClick(Sender: TObject);
begin
     if (Wynik_Im<0)  then wwynik:=FloatToStr(Wynik_Re)+FloatToStr(Wynik_Im)+ 'i'
     else  wwynik:=FloatToStr(Wynik_Re)+'+'+FloatToStr(Wynik_Im)+ 'i';
     if(wariant=9)then Wynik.Caption:='Nie dziel przez 0!'
     else   Wynik.Caption:=wwynik;

end;

///-----------------------------------------------------------------------------
procedure TForm1.WynikClick(Sender: TObject);
begin
end;

procedure TForm1.STClick(Sender: TObject);
         var wynik_st : string;
/// zapis wykladniczy w stopniach
begin
    if (wariant<9) then begin
     z:=Sqrt(Wynik_Im*Wynik_Im+Wynik_Re*Wynik_Re);
     cos:= Wynik_Re/z;
     sin:= Wynik_Im/z;
          end;


             case wariant of
             1:  begin    wynik_st:=FloatToStr(z)+'e^(i*90°)'; end;
             2:  begin    wynik_st:=FloatToStr(z)+'e^(i*270°)'; end;
             3:  begin    wynik_st:=FloatToStr(z)+'e^(i*0°)' ; end;
             4:  begin    wynik_st:=FloatToStr(z)+'e^(i*180°)'; end;

             5:  begin    wynik_st:=FloatToStr(z)+'e^(i*'+FloatToStr(ARCTAN(sin/cos) * 180 / pi())+'°)'  ; end;
             6:  begin    wynik_st:=FloatToStr(z)+'e^(i*'+FloatToStr( 360+ARCTAN(sin/cos) * 180 / pi())+'°)'; end;

             7:  begin    wynik_st:=FloatToStr(z)+'e^(i*'+FloatToStr( 180+ARCTAN(sin/cos) * 180 / pi())+'°)'; end;
             8:  begin    wynik_st:=FloatToStr(z)+'e^(i*'+FloatToStr( 180+ARCTAN(sin/cos) * 180 / pi())+'°)'; end;
             9:  begin    wynik_st:='Nie dziel przez 0!'; end;
             10:  begin    wynik_st:='0'; end;
             end;

             Wynik.Caption:=wynik_st;
    end;

   /// Zapis wykladniczy w radianach
procedure TForm1.RAClick(Sender: TObject);
         var wynik_st : string;
begin

     if (wariant<9) then begin
     z:=Sqrt(Wynik_Im*Wynik_Im+Wynik_Re*Wynik_Re);
     cos:= Wynik_Re/z;
     sin:= Wynik_Im/z;
          end;

          case wariant of
             1:  begin    wynik_st:=FloatToStr(z)+'e^(i*'+FloatToStr(pi()/2)+'rad)'; end;
             2:  begin    wynik_st:=FloatToStr(z)+'e^(i*'+FloatToStr(3*pi()/2)+'rad)'; end;
             3:  begin    wynik_st:=FloatToStr(z)+'e^(i*'+FloatToStr(0)+'rad)';  end;
             4:  begin    wynik_st:=FloatToStr(z)+'e^(i*'+FloatToStr(pi())+'rad)'; end;

             5:  begin    wynik_st:=FloatToStr(z)+'e^(i*'+FloatToStr(ARCTAN(sin/cos))+'rad)'  ; end;
             6:  begin    wynik_st:=FloatToStr(z)+'e^(i*'+FloatToStr( 2*pi() +ARCTAN(sin/cos))+'rad)'; end;

             7:  begin    wynik_st:=FloatToStr(z)+'e^(i*'+FloatToStr( pi()+ ARCTAN(sin/cos))+'rad)'; end;
             8:  begin    wynik_st:=FloatToStr(z)+'e^(i*'+FloatToStr( pi()+ ARCTAN(sin/cos))+'rad)'; end;
             9:  begin    wynik_st:='Nie dziel przez 0!'; end;
              10:  begin    wynik_st:='0'; end;
             end;
            Wynik.Caption:=wynik_st;
end;

          /// Zapis wykladniczy w ulamku pi
procedure TForm1.UPClick(Sender: TObject);
         var wynik_st: string;
begin
     if (wariant<9) then begin
               z:=Sqrt(Wynik_Im*Wynik_Im+Wynik_Re*Wynik_Re);
        cos:= Wynik_Re/z;
        sin:= Wynik_Im/z;
             end;

            case wariant of
             1:  begin    wynik_st:=FloatToStr(z)+'e^(i*π/2)'; end;
             2:  begin    wynik_st:=FloatToStr(z)+'e^(i*3π/2)'; end;
             3:  begin    wynik_st:=FloatToStr(z)+'e^(i*0)' ; end;
             4:  begin    wynik_st:=FloatToStr(z)+'e^(i*π)'; end;

             5:  begin   wynik_st:=FloatToStr(z)+'e^(i*'+FloatToStr(( ARCTAN(sin/cos) * 180 / pi())/180)+'π)'  ; end;
             6:  begin   wynik_st:=FloatToStr(z)+'e^(i*'+FloatToStr(( 360+ARCTAN(sin/cos) * 180 / pi())/180)+'π)'; end;
             7:  begin   wynik_st:=FloatToStr(z)+'e^(i*'+FloatToStr(( 180+ARCTAN(sin/cos) * 180 / pi())/180)+'π)'; end;
             8:  begin   wynik_st:=FloatToStr(z)+'e^(i*'+FloatToStr(( 180+ARCTAN(sin/cos) * 180 / pi())/180)+'π)'; end;
             9:  begin    wynik_st:='Nie dziel przez 0!'; end;
             10:  begin    wynik_st:='0'; end;
             end;
             Wynik.Caption:=wynik_st;
end;

  /// zapis tryginomeryczny  w stopniach
procedure TForm1.ST1Click(Sender: TObject);
         var wynik_st : string;

 begin
     if (wariant<9) then begin
            z:=Sqrt(Wynik_Im*Wynik_Im+Wynik_Re*Wynik_Re);
     cos:= Wynik_Re/z;
     sin:= Wynik_Im/z;
          end;

              case wariant of
              1:  begin    wynik_st:=FloatToStr(z)+'(cos90°+isin90°)'; end;
              2:  begin    wynik_st:=FloatToStr(z)+'(cos270°+isin270°)'; end;
              3:  begin    wynik_st:=FloatToStr(z)+'(cos0°+isin0°)' ; end;
              4:  begin    wynik_st:=FloatToStr(z)+'(cos180°+isin180°)'; end;

              5:  begin    wynik_st:=FloatToStr(z)+'(cos'+FloatToStr(ARCTAN(sin/cos) * 180 / pi())+'°+ isin'+FloatToStr(ARCTAN(sin/cos) * 180 / pi())+'°)'  ; end;
              6:  begin    wynik_st:=FloatToStr(z)+'(cos'+FloatToStr( 360+ARCTAN(sin/cos) * 180 / pi())+'°+ isin'+FloatToStr( 360+ARCTAN(sin/cos) * 180 / pi())+'°)'; end;

              7:  begin    wynik_st:=FloatToStr(z)+'(cos'+FloatToStr( 180+ARCTAN(sin/cos) * 180 / pi())+'°+ isin'+FloatToStr( 180+ARCTAN(sin/cos) * 180 / pi())+'°)'; end;
              8:  begin    wynik_st:=FloatToStr(z)+'(cos'+FloatToStr( 180+ARCTAN(sin/cos) * 180 / pi())+'°+ isin'+FloatToStr( 180+ARCTAN(sin/cos) * 180 / pi())+'°)'; end;
              9:  begin    wynik_st:='Nie dziel przez 0!'; end;
               10:  begin    wynik_st:='0'; end;
              end;

              Wynik.Caption:=wynik_st;
end;

      /// zapis tryginomeryczny  w radianach
procedure TForm1.RA1Click(Sender: TObject);

             var wynik_st : string;
begin
    if (wariant<9) then begin
            z:=Sqrt(Wynik_Im*Wynik_Im+Wynik_Re*Wynik_Re);
     cos:= Wynik_Re/z;
     sin:= Wynik_Im/z;
          end;

          case wariant of
              1: begin    wynik_st:=FloatToStr(z)+'(cos'+FloatToStr(pi()/2)+'rad + isin'+FloatToStr(pi()/2)+'rad)'; end;
              2: begin    wynik_st:=FloatToStr(z)+'(cos'+FloatToStr(3*pi()/2)+'rad + isin'+FloatToStr(3*pi()/2)+'rad)'; end;
              3: begin    wynik_st:=FloatToStr(z)+'(cos'+FloatToStr(0)+'rad + isin'+FloatToStr(0)+'rad)'; end;
              4: begin    wynik_st:=FloatToStr(z)+'(cos'+FloatToStr(pi())+'rad + isin'+FloatToStr(pi())+'rad)'; end;

              5: begin    wynik_st:=FloatToStr(z)+'(cos'+FloatToStr(ARCTAN(sin/cos)) +'rad+ isin'+FloatToStr(ARCTAN(sin/cos))+'rad)'  ; end;
              6: begin    wynik_st:=FloatToStr(z)+'(cos'+FloatToStr( 2*pi +ARCTAN(sin/cos)) +'rad+ isin'+FloatToStr( 2*pi() +ARCTAN(sin/cos))+'rad)'; end;

              7: begin    wynik_st:=FloatToStr(z)+'(cos'+FloatToStr( pi()+ARCTAN(sin/cos)) +'rad+ isin'+FloatToStr( pi() +ARCTAN(sin/cos))+'rad)'; end;
              8: begin    wynik_st:=FloatToStr(z)+'(cos'+FloatToStr( pi()+ARCTAN(sin/cos)) +'rad+ isin'+FloatToStr( pi() +ARCTAN(sin/cos))+'rad)'; end;
              9:  begin    wynik_st:='Nie dziel przez 0!'; end;
              10:  begin    wynik_st:='0'; end;
             end;
             Wynik.Caption:=wynik_st;
end;


             /// zapis tryginomeryczny  w ulamku pi
procedure TForm1.UP1Click(Sender: TObject);
            var wynik_st: string;
begin
    if (wariant<9) then begin
            z:=Sqrt(Wynik_Im*Wynik_Im+Wynik_Re*Wynik_Re);
     cos:= Wynik_Re/z;
     sin:= Wynik_Im/z;
          end;

            case wariant of
              1: begin    wynik_st:=FloatToStr(z)+'(cos(π/2)+isin(π/2))'; end;
              2: begin    wynik_st:=FloatToStr(z)+'(cos(3π/2)+isin(3π/2))'; end;
              3: begin    wynik_st:=FloatToStr(z)+'(cos(0)+isin(0))'; end;
              4: begin    wynik_st:=FloatToStr(z)+'(cos(π)+isin(π))'; end;

              5: begin    wynik_st:=FloatToStr(z)+'(cos('+FloatToStr((ARCTAN(sin/cos) * 180 / pi())/180) +'π)+ isin('+FloatToStr((ARCTAN(sin/cos) * 180 / pi())/180)+'π))'  ; end;
              6: begin    wynik_st:=FloatToStr(z)+'(cos('+FloatToStr((360+ARCTAN(sin/cos) * 180 / pi())/180) +'π)+ isin('+FloatToStr((360+ARCTAN(sin/cos) * 180 / pi())/180)+'π)'; end;

              7: begin    wynik_st:=FloatToStr(z)+'(cos('+FloatToStr(( 180+ARCTAN(sin/cos) * 180 / pi())/180)+'π)+ isin('+FloatToStr(( 180+ARCTAN(sin/cos) * 180 / pi())/180)+'π))'; end;
              8: begin    wynik_st:=FloatToStr(z)+'(cos('+FloatToStr(( 180+ARCTAN(sin/cos) * 180 / pi())/180) +'π)+ isin('+FloatToStr(( 180+ARCTAN(sin/cos) * 180 / pi())/180)+'π))'; end;
              9:  begin    wynik_st:='Nie dziel przez 0!'; end;
              10:  begin    wynik_st:='0'; end;
            end;
             Wynik.Caption:=wynik_st;
end;


procedure TForm1.jaka_postacClick(Sender: TObject);
begin

end;
procedure TForm1.Label1Click(Sender: TObject);
begin

end;
procedure TForm1.Podaj_dwie_liczbyClick(Sender: TObject);
begin

end;
procedure TForm1.FormCreate(Sender: TObject);
begin

end;



end.

