Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 00A2112AC0
	for <lists+usrp-users@lfdr.de>; Fri,  3 May 2019 11:35:23 +0200 (CEST)
Received: from [::1] (port=33138 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hMUb5-0005B6-Vu; Fri, 03 May 2019 05:35:15 -0400
Received: from mail-qt1-f170.google.com ([209.85.160.170]:37652)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <neharikavalecha@gmail.com>)
 id 1hMUaY-000540-Ok
 for usrp-users@lists.ettus.com; Fri, 03 May 2019 05:35:12 -0400
Received: by mail-qt1-f170.google.com with SMTP id e2so4285318qtb.4
 for <usrp-users@lists.ettus.com>; Fri, 03 May 2019 02:34:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+PAKoiIRM4JWAChG77HciPdxvANV6nELLjfwKHiENtU=;
 b=RAHEozB1zm8S5e/9vsTJ99yrV4/sdNCWoqBg6MDurHSKy+pkBevbQTG/YcTuyG2m/+
 Bor6Gk7G0nbuTM9G2KM1UO/MQJrB9J4gfWvkgZ00VxCLUm8Uzu24DQQiXgJkaSeK9R+t
 nfl6/xnoW7xeFzUYevJ7CVO6bc11AhRcvFrpq9t++Etgk/LVpwVHxk+G3xianc9+//BO
 fCsbU97UT9dxHWXbMSVCL2J8iAyui62EI61lbwLTV9cvYSqiVmcD86kDGDPs5rUNV/ad
 qlyEBRLrso2H6q9h2We6Y06UsOGKFFUpeB5VsJeLxGgOibY7It62YpgrDsKUp/Ulzqs8
 Kbrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+PAKoiIRM4JWAChG77HciPdxvANV6nELLjfwKHiENtU=;
 b=YvTVU02ObhSTXIIO4Y/Kb2ag8dVEB8FtpxE8iCvrMgPvDY2++cH7lquw8UYWnP6h0p
 9NNn/n9JxM7GAVGs4cYrSXL9xs3niBS1EkngMU3PdzQ2dgl86nZuvI44Z9SWjOFxpH65
 xLCvcIkTrsPLmVNepZdKC678KyGra5gvvLLhURluxPnPz12MlToLJDZitE3IIRB8ZK+v
 XlbekYqOKMMzUYXqngGHjeY7xgA9eeN3ET14+DDi3D0kzOvbseJWnr5pICGzw9PADQN0
 ZjI1n9giT9G0CcsX1LZsW83Ibqm3KBJl67YatUPnDXjUiGkEMzG7PRBoKwTlM/0kLV42
 zFcw==
X-Gm-Message-State: APjAAAU5L1wBZCrkJwa7FiOQwaO5LkHSDL7+wVy/LKZUMuh4LD8/RJxh
 sEdrjHF5bXsuolKomerEVTH01uImzrJJwxnGzAc=
X-Google-Smtp-Source: APXvYqyPOZ7ICLgla1NAAwuHXLMRFAg1uMy/hs0Iv+IKAbY01Fh7Fy9hpGbc1A/tCC17HkHB4/CdBnWtVNA300QQwS0=
X-Received: by 2002:a0c:b64c:: with SMTP id q12mr7415169qvf.50.1556876041904; 
 Fri, 03 May 2019 02:34:01 -0700 (PDT)
MIME-Version: 1.0
References: <CAJKWE_dGPwMCtm-+pQsy92p9drQbFE+DTuigX243TptdhX11dQ@mail.gmail.com>
 <CALbO1t2JjvMCKvocmsBniY+C140esBX4DFrYtZxuAP6_q2tUHg@mail.gmail.com>
In-Reply-To: <CALbO1t2JjvMCKvocmsBniY+C140esBX4DFrYtZxuAP6_q2tUHg@mail.gmail.com>
Date: Fri, 3 May 2019 11:34:14 +0200
Message-ID: <CAJKWE_e-4USfrk-3uvGg8GnSpmaoh=kFp1+Oyg72Xb5MN95LGQ@mail.gmail.com>
To: Jorge Chen <superme991@gmail.com>, Ali Dormiani <sdormian@eng.ucsd.edu>
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] N310 Multi Device Configuration
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Neharika Valecha via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Neharika Valecha <neharikavalecha@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5400543370936576080=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============5400543370936576080==
Content-Type: multipart/alternative; boundary="0000000000006fe6510587f87395"

--0000000000006fe6510587f87395
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

Thank you Jorge and Ali.

I am using UHD 3.14. I am trying with the example now and as I mentioned
specifying "addr0 addr1" gives an error but I  actually have modified this
code to send a specific file and added a "repeat" tag. Do you think it
would not hang if it's not a continuous transmission?

Regarding the antenna mapping, I have tried it in X300 and here. When I am
using all the antennas for transmission and reception the antenna mapping
doesn't really matter. Either mentioning the channels or the IP addresses
works. Also, since the page only specifies mapping for 4 antennas I am not
sure how to extend to 8. I did try A, B, C, D with all four channels but
again it gives an error,
"invalid subdev-spec markup string: A:0,A:1,B:0,B:1,C:0,C:1,D:0,D:1"
Although, it works for 4 channels just to be clear but not for 8.

So, the main issue seems to be that it is not accepting "addr0, addr1" as
an argument, the error is
"RuntimeError: Error during RPC call to `claim'. Error message: Someone
tried to claim this device again (From: 192.168.10.1)".

If anyone knows why please let me know.
Thank you
Neharika

On Thu, May 2, 2019 at 7:51 PM Jorge Chen <superme991@gmail.com> wrote:

> Hi, Neharika and All,
>
> I met some problems on controlling 2 N310s too.
>
> But first of all, the argument "second_addr" indicates the IP addr. of
> the second SFP+ port on that device, and is set in the case of dual 10G
> streaming.
> I think the first way you wrote is the right way to access the 2 N310s,
> even though it is not listed in the Multiple USRP Configuration page.
> (https://files.ettus.com/manual/page_multiple.html)
> With that, I can control them (set rf parameters and receive signal on al=
l
> 8 channels) without the error message you mentioned, what version of the
> UHD you're using? (UHD 3.13.1, 3.14 worked for me)
>
> My only problem is that they stop working (hang) at transmitting.
> An alternative way  is that I create 2 usrp objects to control them as th=
e
> commands below.
>
> *uhd::usrp::multi_usrp::sptr tx_usrp_1
> =3D uhd::usrp::multi_usrp::make("addr=3D192.168.30.3,master_clock_rate=3D=
122.88e6,clock_source=3Dexternal,time_source=3Dexternal") uhd::usrp::multi_=
usrp::sptr
> tx_usrp_2
> =3D uhd::usrp::multi_usrp::make("addr=3D192.168.40.3,master_clock_rate=3D=
122.88e6,clock_source=3Dexternal,time_source=3Dexternal")*
> Even though it works ( transmit signal simultaneously on all channels ), =
I
> don't think it's the best way (or right way) to use multiple USRPs.
>
> Has anyone done this before? or any suggestion?
>
> Thanks
> Jorge
>
>
>
> Neharika Valecha via USRP-users <usrp-users@lists.ettus.com> =E6=96=BC 20=
19=E5=B9=B45=E6=9C=882=E6=97=A5
> =E9=80=B1=E5=9B=9B =E4=B8=8B=E5=8D=889:20=E5=AF=AB=E9=81=93=EF=BC=9A
>
>> Hello,
>>
>> I am using two N310 USRP's to create an 8x8 MIMO setup. But, I am unable
>> to make both of them work together. I am using an example program from
>> the UHD driver - txrx_loopback_to_file.
>>
>> I give the following command:
>>
>> ./txrx_loopback_to_file --tx-rate 7.68e6 --rx-rate 7.68e6 --tx-freq
>> 2.60e9 --rx-freq 2.60e9 --tx-gain 70 --rx-gain 60 --tx-channels
>> "0,1,2,3" --rx-channels "0,1,2,3" --tx-args "addr=3D192.168.10.2,second_=
addr=3D192.168.20.2,time_source=3Dexternal,clock_source=3Dexternal,master_c=
lock_rate=3D122.88e6"
>> --rx-args
>> "addr=3D192.168.10.2,second_addr=3D192.168.20.2,time_source=3Dexternal,c=
lock_source=3Dexternal,master_clock_rate=3D122.88e6"
>> --settling 1
>>
>> and only one USRP turns on.
>> In USRP X300 there were two ways to use multiple USRP's,
>> 1. Use --tx-args and --rx-args to specify "addr0,addr1" to access two
>> different USRP's with --tx-channels and --rx-channels as "0,1". I tried
>> that here but it gives an error, "Error message: Someone tried to claim
>> this device again".
>>
>> 2. To define just one "addr" in --tx-args and --rx-args but have
>> --tx-channels and --rx-channels as "0,1,2,3" (as X300 is 2x2). When
>> tried with N310 with channel values "0,1,2,3,4,5,6,7" it gives an error
>> that Tx channels invalid.
>>
>> So, could you tell me what is the correct syntax to access two USRP's?
>>
>> Thank you
>> Neharika
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>
>
>

--0000000000006fe6510587f87395
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hello,<div><br></div><div>Thank you Jorge=
 and Ali.</div><div><br></div><div><font face=3D"arial, helvetica, sans-ser=
if">I am using UHD 3.14. I am trying with the example now and as I mentione=
d specifying &quot;addr0 addr1&quot; gives an error but I=C2=A0 actually ha=
ve modified this code to send a specific file and added a &quot;repeat&quot=
; tag. Do you think it would not hang if it&#39;s not a continuous transmis=
sion?</font></div><div><br></div><div><font face=3D"arial, helvetica, sans-=
serif">Regarding the antenna mapping, I have tried it in X300 and here. Whe=
n I am using all the antennas for transmission and reception the antenna ma=
pping doesn&#39;t really matter. Either mentioning the channels or the IP a=
ddresses works. Also, since the page only specifies mapping for 4 antennas =
I am not sure how to extend to 8. I did try A, B, C, D with all four channe=
ls but again it gives an error,</font></div><div>&quot;<span style=3D"font-=
variant-ligatures:no-common-ligatures;color:rgb(0,0,0);font-family:Menlo;fo=
nt-size:11px">invalid subdev-spec markup string: A:0,A:1,B:0,B:1,C:0,C:1,D:=
0,D:1</span>&quot;</div>





<div>Although, it works for 4 channels just to be clear but not for 8.</div=
><div><br></div><div>So, the main issue seems to be that it is not acceptin=
g &quot;addr0, addr1&quot; as an argument, the error is=C2=A0</div><div>&qu=
ot;<span style=3D"font-variant-ligatures:no-common-ligatures;color:rgb(0,0,=
0);font-family:Menlo;font-size:11px">RuntimeError: Error during RPC call to=
 `claim&#39;. Error message: Someone tried to claim this device again (From=
: 192.168.10.1)</span>&quot;.=C2=A0</div><div><br></div><div>If anyone know=
s why please let me know.</div>





<div><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmai=
l_signature"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D=
"ltr"><div dir=3D"ltr"><div style=3D"font-size:12.8px">Thank you</div><div =
style=3D"font-size:12.8px">Neharika</div></div></div></div></div></div></di=
v></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Thu, May 2, 2019 at 7:51 PM Jorge Chen &lt;<a href=3D"ma=
ilto:superme991@gmail.com">superme991@gmail.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D=
"ltr"><div dir=3D"ltr">Hi,=C2=A0<span style=3D"color:rgb(0,0,0);font-family=
:arial,helvetica,sans-serif;text-decoration-style:initial;text-decoration-c=
olor:initial;float:none;display:inline">Neharika and All,</span><div><span =
style=3D"color:rgb(0,0,0);font-family:arial,helvetica,sans-serif;text-decor=
ation-style:initial;text-decoration-color:initial;float:none;display:inline=
"><br></span></div><div><span style=3D"color:rgb(0,0,0);font-family:arial,h=
elvetica,sans-serif;text-decoration-style:initial;text-decoration-color:ini=
tial;float:none;display:inline">I met some problems on controlling 2 N310s =
too.</span></div><div><span style=3D"color:rgb(0,0,0);font-family:arial,hel=
vetica,sans-serif;text-decoration-style:initial;text-decoration-color:initi=
al;float:none;display:inline"><br></span></div><div><span style=3D"color:rg=
b(0,0,0);font-family:arial,helvetica,sans-serif;text-decoration-style:initi=
al;text-decoration-color:initial;float:none;display:inline">But first of al=
l, the=C2=A0argument &quot;<span style=3D"font-family:Roboto,sans-serif;fon=
t-size:14px;background-color:rgb(255,255,255);text-decoration-style:initial=
;text-decoration-color:initial;float:none;display:inline">second_addr&quot;=
 indicates the IP addr. of the=C2=A0<span style=3D"text-decoration-style:in=
itial;text-decoration-color:initial;float:none;display:inline">second SFP+ =
port on that device, and is set in the case of dual 10G streaming.</span></=
span></span></div><div><span style=3D"color:rgb(0,0,0);font-family:arial,he=
lvetica,sans-serif;text-decoration-style:initial;text-decoration-color:init=
ial;float:none;display:inline"><span style=3D"font-family:Roboto,sans-serif=
;font-size:14px;background-color:rgb(255,255,255);text-decoration-style:ini=
tial;text-decoration-color:initial;float:none;display:inline"><span style=
=3D"text-decoration-style:initial;text-decoration-color:initial;float:none;=
display:inline">I think the first way you wrote is the right way to access =
the 2 N310s, even though it is not listed in the Multiple USRP Configuratio=
n page.<br>(<a href=3D"https://files.ettus.com/manual/page_multiple.html" t=
arget=3D"_blank">https://files.ettus.com/manual/page_multiple.html</a>)<br>=
With that, I can control them (set rf parameters and receive signal on all =
8 channels) without the error message you mentioned, what version of the UH=
D you&#39;re using? (UHD 3.13.1, 3.14 worked for me)<br><br></span></span><=
/span></div><div><span style=3D"color:rgb(0,0,0);font-family:arial,helvetic=
a,sans-serif;text-decoration-style:initial;text-decoration-color:initial;fl=
oat:none;display:inline"><span style=3D"font-family:Roboto,sans-serif;font-=
size:14px;background-color:rgb(255,255,255);text-decoration-style:initial;t=
ext-decoration-color:initial;float:none;display:inline"><span style=3D"text=
-decoration-style:initial;text-decoration-color:initial;float:none;display:=
inline">My only problem is that they stop working (hang) at transmitting.<b=
r>

<div style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;fo=
nt-size:small;background-color:rgb(255,255,255);text-decoration-style:initi=
al;text-decoration-color:initial">An alternative way=C2=A0 is that I create=
 2 usrp objects to control them as the commands below.</div><span class=3D"=
gmail-m_-4405840389670138421gmail-im" style=3D"color:rgb(80,0,80);font-fami=
ly:Arial,Helvetica,sans-serif;font-size:small;background-color:rgb(255,255,=
255);text-decoration-style:initial;text-decoration-color:initial"><i><b><fo=
nt size=3D"1">uhd::usrp::multi_usrp::sptr tx_usrp_1 =3D=C2=A0uhd::usrp::mul=
ti_usrp::make(&quot;addr=3D192.168.30.3<font face=3D"arial, helvetica, sans=
-serif">,<span style=3D"color:rgb(0,0,0);white-space:pre-wrap">master_clock=
_rate=3D122.88e6,clock_source=3Dexternal,time_source=3Dexternal&quot;</span=
></font>)<span>=C2=A0</span><br class=3D"gmail-m_-4405840389670138421gmail-=
m_-1800548767396613609m_595261457471305121m_3322671819249650700gmail-m_-388=
8277657015760414gmail-Apple-interchange-newline">uhd::usrp::multi_usrp::spt=
r tx_usrp_2 =3D=C2=A0uhd::usrp::multi_usrp::make(&quot;addr=3D192.168.40.3<=
font face=3D"arial, helvetica, sans-serif">,<span style=3D"color:rgb(0,0,0)=
;white-space:pre-wrap">master_clock_rate=3D122.88e6,clock_source=3Dexternal=
,time_source=3Dexternal&quot;</span></font>)</font></b></i></span>

<br><span style=3D"font-family:arial,helvetica,sans-serif;font-size:small;b=
ackground-color:rgb(255,255,255);text-decoration-style:initial;text-decorat=
ion-color:initial;float:none;display:inline"><span style=3D"color:rgb(34,34=
,34);font-family:Arial,Helvetica,sans-serif;text-decoration-style:initial;t=
ext-decoration-color:initial;float:none;display:inline">Even though it work=
s ( transmit signal simultaneously on all channels ),</span>=C2=A0I don&#39=
;t think it&#39;s the best way=C2=A0<span style=3D"text-decoration-style:in=
itial;text-decoration-color:initial;float:none;display:inline">(or right wa=
y)</span>

 to use multiple USRPs.</span><br><br>Has anyone done this before? or any s=
uggestion?</span></span></span></div><div><span style=3D"color:rgb(0,0,0);f=
ont-family:arial,helvetica,sans-serif;text-decoration-style:initial;text-de=
coration-color:initial;float:none;display:inline"><span style=3D"font-famil=
y:Roboto,sans-serif;font-size:14px;background-color:rgb(255,255,255);text-d=
ecoration-style:initial;text-decoration-color:initial;float:none;display:in=
line"><span style=3D"text-decoration-style:initial;text-decoration-color:in=
itial;float:none;display:inline"><br></span></span></span></div><div><span =
style=3D"color:rgb(0,0,0);font-family:arial,helvetica,sans-serif;text-decor=
ation-style:initial;text-decoration-color:initial;float:none;display:inline=
"><span style=3D"font-family:Roboto,sans-serif;font-size:14px;background-co=
lor:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:in=
itial;float:none;display:inline"><span style=3D"text-decoration-style:initi=
al;text-decoration-color:initial;float:none;display:inline">Thanks</span></=
span></span></div><div><span style=3D"color:rgb(0,0,0);font-family:arial,he=
lvetica,sans-serif;text-decoration-style:initial;text-decoration-color:init=
ial;float:none;display:inline"><span style=3D"font-family:Roboto,sans-serif=
;font-size:14px;background-color:rgb(255,255,255);text-decoration-style:ini=
tial;text-decoration-color:initial;float:none;display:inline"><span style=
=3D"text-decoration-style:initial;text-decoration-color:initial;float:none;=
display:inline">Jorge<br><br><br></span></span></span></div></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Neharika Valech=
a via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=
=3D"_blank">usrp-users@lists.ettus.com</a>&gt; =E6=96=BC 2019=E5=B9=B45=E6=
=9C=882=E6=97=A5 =E9=80=B1=E5=9B=9B =E4=B8=8B=E5=8D=889:20=E5=AF=AB=E9=81=
=93=EF=BC=9A<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><di=
v dir=3D"ltr"><font face=3D"arial, helvetica, sans-serif"><span style=3D"co=
lor:rgb(0,0,0);font-size:13px">Hello,</span><br style=3D"padding:0px;margin=
:0px;color:rgb(0,0,0);font-size:13px"><br style=3D"padding:0px;margin:0px;c=
olor:rgb(0,0,0);font-size:13px"><span style=3D"color:rgb(0,0,0);font-size:1=
3px">I am using two N310 USRP&#39;s to create an 8x8 MIMO setup. But, I am =
unable to make both of=C2=A0</span><span style=3D"color:rgb(0,0,0);font-siz=
e:13px">them work together. I am using an example program from the UHD driv=
er -=C2=A0</span><span style=3D"color:rgb(0,0,0);font-size:13px">txrx_loopb=
ack_to_file.</span><br style=3D"padding:0px;margin:0px;color:rgb(0,0,0);fon=
t-size:13px"><br style=3D"padding:0px;margin:0px;color:rgb(0,0,0);font-size=
:13px"><span style=3D"color:rgb(0,0,0);font-size:13px">I give the following=
 command:</span><br style=3D"padding:0px;margin:0px;color:rgb(0,0,0);font-s=
ize:13px"><br style=3D"padding:0px;margin:0px;color:rgb(0,0,0);font-size:13=
px"><span style=3D"color:rgb(0,0,0);font-size:13px">./txrx_loopback_to_file=
 --tx-rate 7.68e6 --rx-rate 7.68e6 --tx-freq 2.60e9 --rx-freq=C2=A0</span><=
span style=3D"color:rgb(0,0,0);font-size:13px">2.60e9 --tx-gain 70 --rx-gai=
n 60 --tx-channels &quot;0,1,2,3&quot; --rx-channels &quot;0,1,2,3&quot;=C2=
=A0</span><span style=3D"color:rgb(0,0,0);font-size:13px">--tx-args=C2=A0</=
span><span style=3D"color:rgb(0,0,0);font-size:13px">&quot;addr=3D192.168.1=
0.2,second_addr=3D192.168.20.2,time_source=3Dexternal,clock_source=3Dextern=
al,master_clock_rate=3D122.88e6&quot; --rx-args=C2=A0</span><span style=3D"=
color:rgb(0,0,0);font-size:13px">&quot;addr=3D192.168.10.2,second_addr=3D19=
2.168.20.2,time_source=3Dexternal,clock_source=3Dexternal,master_clock_rate=
=3D122.88e6&quot;=C2=A0</span><span style=3D"color:rgb(0,0,0);font-size:13p=
x">--settling=C2=A0</span><span style=3D"color:rgb(0,0,0);font-size:13px">1=
</span><br style=3D"padding:0px;margin:0px;color:rgb(0,0,0);font-size:13px"=
><br style=3D"padding:0px;margin:0px;color:rgb(0,0,0);font-size:13px"><span=
 style=3D"color:rgb(0,0,0);font-size:13px">and only one USRP turns on.</spa=
n><br style=3D"padding:0px;margin:0px;color:rgb(0,0,0);font-size:13px"><spa=
n style=3D"color:rgb(0,0,0);font-size:13px">In USRP X300 there were two way=
s to use multiple USRP&#39;s,</span><br style=3D"padding:0px;margin:0px;col=
or:rgb(0,0,0);font-size:13px"><span style=3D"color:rgb(0,0,0);font-size:13p=
x">1. Use --tx-args and --rx-args to specify &quot;addr0,addr1&quot; to acc=
ess two different USRP&#39;s=C2=A0</span><span style=3D"color:rgb(0,0,0);fo=
nt-size:13px">with --tx-channels and --rx-channels as &quot;0,1&quot;. I tr=
ied that here but it gives an error,=C2=A0</span><span style=3D"color:rgb(0=
,0,0);font-size:13px">&quot;Error message: Someone tried to claim this devi=
ce again&quot;.</span><br style=3D"padding:0px;margin:0px;color:rgb(0,0,0);=
font-size:13px"><br style=3D"padding:0px;margin:0px;color:rgb(0,0,0);font-s=
ize:13px"><span style=3D"color:rgb(0,0,0);font-size:13px">2. To define just=
 one &quot;addr&quot; in --tx-args and --rx-args but have --tx-channels and=
=C2=A0</span><span style=3D"color:rgb(0,0,0);font-size:13px">--rx-channels =
as &quot;0,1,2,3&quot; (as X300 is 2x2). When tried with N310 with channel =
values=C2=A0</span><span style=3D"color:rgb(0,0,0);font-size:13px">&quot;0,=
1,2,3,4,5,6,7&quot; it gives an error that Tx channels invalid.</span><br s=
tyle=3D"padding:0px;margin:0px;color:rgb(0,0,0);font-size:13px"><br style=
=3D"padding:0px;margin:0px;color:rgb(0,0,0);font-size:13px"><span style=3D"=
color:rgb(0,0,0);font-size:13px">So, could you tell me what is the correct =
syntax to access two USRP&#39;s?</span><br style=3D"padding:0px;margin:0px;=
color:rgb(0,0,0);font-size:13px"><br style=3D"padding:0px;margin:0px;color:=
rgb(0,0,0);font-size:13px"><span style=3D"color:rgb(0,0,0);font-size:13px">=
Thank you</span><br style=3D"padding:0px;margin:0px;color:rgb(0,0,0);font-s=
ize:13px"><span style=3D"color:rgb(0,0,0);font-size:13px">Neharika</span></=
font></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div><br clear=3D"all"><div><br></div></div></div>
</blockquote></div></div>

--0000000000006fe6510587f87395--


--===============5400543370936576080==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5400543370936576080==--

