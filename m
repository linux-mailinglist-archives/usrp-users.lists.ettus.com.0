Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1419212148
	for <lists+usrp-users@lfdr.de>; Thu,  2 May 2019 19:52:42 +0200 (CEST)
Received: from [::1] (port=36488 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hMFsq-0006NC-4T; Thu, 02 May 2019 13:52:36 -0400
Received: from mail-qk1-f181.google.com ([209.85.222.181]:33900)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <superme991@gmail.com>)
 id 1hMFsI-00069I-DR
 for usrp-users@lists.ettus.com; Thu, 02 May 2019 13:52:32 -0400
Received: by mail-qk1-f181.google.com with SMTP id n68so2023028qka.1
 for <usrp-users@lists.ettus.com>; Thu, 02 May 2019 10:51:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xzLDAomZ3stsrLYArWT5xO8uQvfOVjMGN7qLR0p8s60=;
 b=NWkoQq3OYTzeAVkeloFLsTFV5EHeRjpmlQVnwBi+6pYGPJSwhid1GwiBJcMNRFsTXN
 5O8FRj17VKZlmMOl7suk5UWxDYHRcwMba7HTelEBEU6zlrlZkietp3AW3Pr/AxroOduF
 /5ms/1CIMsVgjkqaO2co2WbSqEiwTX/D8p2JhLcwgOycap1QJefRHz9/w7F4ioS1E+g+
 Bk9QWMZA4zWW8MQ96K/a31NCOBs7pddyxnQyQXR72k4mqP6CJ2Zpp0GqbeyPub6+/vra
 CGAF1ji/JxLWTBcnCgW05MJQ8lHjeqDS91BwoJ7QkQ+ICtVNu40Li2E+A1ehxDGFnGWZ
 yxhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xzLDAomZ3stsrLYArWT5xO8uQvfOVjMGN7qLR0p8s60=;
 b=Eqb+IpG9HoK98Rdx9VacqdONarFIMZfESt0KcwmL7DohB62ivzxuAvAG8wKuy4DCNX
 ZTZ+RdQy+TwvT8Nh023+oCiFObcLIg2E1y9cIhWIg3Ge1zpo63ImRkfxWnxlKI35hzJc
 tLAT0ttT/XFw5DBWcYreqjvVMNriHVT1wGrZs9SLhRrDwEJ0e99RwgXsT1G61aby/OVs
 9kAweCRlM5X1JuGcVK1/sl+GtLG4H/48ws2iVGxYoocS6WbsdvI7Vemyk9MULoPaESz1
 pFJ0jr/uTwakqWG4abaSTbI9Y3j+Py7ijXk7WTS27pLDbXA1GhQkt7YmTgusRpzVwl9H
 /9ZQ==
X-Gm-Message-State: APjAAAVs/u3JbOyh+op0D7aXdX9eOYyf5x4TK94lfomgerP1We8fFipH
 YIo33QdCK/YMDTavzwcEuBGRxuDmOL2kRJE94UQ=
X-Google-Smtp-Source: APXvYqw8+Ban4v4QCt0EMHTUR+3bg2UiD+SZSsdaNBavGIIee3VJx/I0liVs6t55ABx3umIBmfbcNooJrfpI3JlU9GE=
X-Received: by 2002:a37:a44d:: with SMTP id n74mr4265921qke.244.1556819481679; 
 Thu, 02 May 2019 10:51:21 -0700 (PDT)
MIME-Version: 1.0
References: <CAJKWE_dGPwMCtm-+pQsy92p9drQbFE+DTuigX243TptdhX11dQ@mail.gmail.com>
In-Reply-To: <CAJKWE_dGPwMCtm-+pQsy92p9drQbFE+DTuigX243TptdhX11dQ@mail.gmail.com>
Date: Fri, 3 May 2019 01:51:13 +0800
Message-ID: <CALbO1t2JjvMCKvocmsBniY+C140esBX4DFrYtZxuAP6_q2tUHg@mail.gmail.com>
To: Neharika Valecha <neharikavalecha@gmail.com>
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
From: Jorge Chen via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jorge Chen <superme991@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3091838615360761121=="
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

--===============3091838615360761121==
Content-Type: multipart/alternative; boundary="0000000000002f639c0587eb48a7"

--0000000000002f639c0587eb48a7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi, Neharika and All,

I met some problems on controlling 2 N310s too.

But first of all, the argument "second_addr" indicates the IP addr. of
the second
SFP+ port on that device, and is set in the case of dual 10G streaming.
I think the first way you wrote is the right way to access the 2 N310s,
even though it is not listed in the Multiple USRP Configuration page.
(https://files.ettus.com/manual/page_multiple.html)
With that, I can control them (set rf parameters and receive signal on all
8 channels) without the error message you mentioned, what version of the
UHD you're using? (UHD 3.13.1, 3.14 worked for me)

My only problem is that they stop working (hang) at transmitting.
An alternative way  is that I create 2 usrp objects to control them as the
commands below.

*uhd::usrp::multi_usrp::sptr tx_usrp_1
=3D uhd::usrp::multi_usrp::make("addr=3D192.168.30.3,master_clock_rate=3D12=
2.88e6,clock_source=3Dexternal,time_source=3Dexternal")
uhd::usrp::multi_usrp::sptr
tx_usrp_2
=3D uhd::usrp::multi_usrp::make("addr=3D192.168.40.3,master_clock_rate=3D12=
2.88e6,clock_source=3Dexternal,time_source=3Dexternal")*
Even though it works ( transmit signal simultaneously on all channels ), I
don't think it's the best way (or right way) to use multiple USRPs.

Has anyone done this before? or any suggestion?

Thanks
Jorge



Neharika Valecha via USRP-users <usrp-users@lists.ettus.com> =E6=96=BC 2019=
=E5=B9=B45=E6=9C=882=E6=97=A5 =E9=80=B1=E5=9B=9B
=E4=B8=8B=E5=8D=889:20=E5=AF=AB=E9=81=93=EF=BC=9A

> Hello,
>
> I am using two N310 USRP's to create an 8x8 MIMO setup. But, I am unable
> to make both of them work together. I am using an example program from
> the UHD driver - txrx_loopback_to_file.
>
> I give the following command:
>
> ./txrx_loopback_to_file --tx-rate 7.68e6 --rx-rate 7.68e6 --tx-freq 2.60e=
9
> --rx-freq 2.60e9 --tx-gain 70 --rx-gain 60 --tx-channels "0,1,2,3"
> --rx-channels "0,1,2,3" --tx-args "addr=3D192.168.10.2,second_addr=3D192.=
168.20.2,time_source=3Dexternal,clock_source=3Dexternal,master_clock_rate=
=3D122.88e6"
> --rx-args
> "addr=3D192.168.10.2,second_addr=3D192.168.20.2,time_source=3Dexternal,cl=
ock_source=3Dexternal,master_clock_rate=3D122.88e6"
> --settling 1
>
> and only one USRP turns on.
> In USRP X300 there were two ways to use multiple USRP's,
> 1. Use --tx-args and --rx-args to specify "addr0,addr1" to access two
> different USRP's with --tx-channels and --rx-channels as "0,1". I tried
> that here but it gives an error, "Error message: Someone tried to claim
> this device again".
>
> 2. To define just one "addr" in --tx-args and --rx-args but have
> --tx-channels and --rx-channels as "0,1,2,3" (as X300 is 2x2). When tried
> with N310 with channel values "0,1,2,3,4,5,6,7" it gives an error that Tx
> channels invalid.
>
> So, could you tell me what is the correct syntax to access two USRP's?
>
> Thank you
> Neharika
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000002f639c0587eb48a7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Hi,=C2=A0<span style=3D"=
color:rgb(0,0,0);font-family:arial,helvetica,sans-serif;text-decoration-sty=
le:initial;text-decoration-color:initial;float:none;display:inline">Neharik=
a and All,</span><div><span style=3D"color:rgb(0,0,0);font-family:arial,hel=
vetica,sans-serif;text-decoration-style:initial;text-decoration-color:initi=
al;float:none;display:inline"><br></span></div><div><span style=3D"color:rg=
b(0,0,0);font-family:arial,helvetica,sans-serif;text-decoration-style:initi=
al;text-decoration-color:initial;float:none;display:inline">I met some prob=
lems on controlling 2 N310s too.</span></div><div><span style=3D"color:rgb(=
0,0,0);font-family:arial,helvetica,sans-serif;text-decoration-style:initial=
;text-decoration-color:initial;float:none;display:inline"><br></span></div>=
<div><span style=3D"color:rgb(0,0,0);font-family:arial,helvetica,sans-serif=
;text-decoration-style:initial;text-decoration-color:initial;float:none;dis=
play:inline">But first of all, the=C2=A0argument &quot;<span style=3D"font-=
family:Roboto,sans-serif;font-size:14px;background-color:rgb(255,255,255);t=
ext-decoration-style:initial;text-decoration-color:initial;float:none;displ=
ay:inline">second_addr&quot; indicates the IP addr. of the=C2=A0<span style=
=3D"text-decoration-style:initial;text-decoration-color:initial;float:none;=
display:inline">second SFP+ port on that device, and is set in the case of =
dual 10G streaming.</span></span></span></div><div><span style=3D"color:rgb=
(0,0,0);font-family:arial,helvetica,sans-serif;text-decoration-style:initia=
l;text-decoration-color:initial;float:none;display:inline"><span style=3D"f=
ont-family:Roboto,sans-serif;font-size:14px;background-color:rgb(255,255,25=
5);text-decoration-style:initial;text-decoration-color:initial;float:none;d=
isplay:inline"><span style=3D"text-decoration-style:initial;text-decoration=
-color:initial;float:none;display:inline">I think the first way you wrote i=
s the right way to access the 2 N310s, even though it is not listed in the =
Multiple USRP Configuration page.<br>(<a href=3D"https://files.ettus.com/ma=
nual/page_multiple.html">https://files.ettus.com/manual/page_multiple.html<=
/a>)<br>With that, I can control them (set rf parameters and receive signal=
 on all 8 channels) without the error message you mentioned, what version o=
f the UHD you&#39;re using? (UHD 3.13.1, 3.14 worked for me)<br><br></span>=
</span></span></div><div><span style=3D"color:rgb(0,0,0);font-family:arial,=
helvetica,sans-serif;text-decoration-style:initial;text-decoration-color:in=
itial;float:none;display:inline"><span style=3D"font-family:Roboto,sans-ser=
if;font-size:14px;background-color:rgb(255,255,255);text-decoration-style:i=
nitial;text-decoration-color:initial;float:none;display:inline"><span style=
=3D"text-decoration-style:initial;text-decoration-color:initial;float:none;=
display:inline">My only problem is that they stop working (hang) at transmi=
tting.<br>

<div style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;fo=
nt-size:small;background-color:rgb(255,255,255);text-decoration-style:initi=
al;text-decoration-color:initial">An alternative way=C2=A0 is that I create=
 2 usrp objects to control them as the commands below.</div><span class=3D"=
gmail-im" style=3D"color:rgb(80,0,80);font-family:Arial,Helvetica,sans-seri=
f;font-size:small;background-color:rgb(255,255,255);text-decoration-style:i=
nitial;text-decoration-color:initial"><i><b><font size=3D"1">uhd::usrp::mul=
ti_usrp::sptr tx_usrp_1 =3D=C2=A0uhd::usrp::multi_usrp::make(&quot;addr=3D1=
92.168.30.3<font face=3D"arial, helvetica, sans-serif">,<span style=3D"colo=
r:rgb(0,0,0);white-space:pre-wrap">master_clock_rate=3D122.88e6,clock_sourc=
e=3Dexternal,time_source=3Dexternal&quot;</span></font>)<span>=C2=A0</span>=
<br class=3D"gmail-m_-1800548767396613609m_595261457471305121m_332267181924=
9650700gmail-m_-3888277657015760414gmail-Apple-interchange-newline">uhd::us=
rp::multi_usrp::sptr tx_usrp_2 =3D=C2=A0uhd::usrp::multi_usrp::make(&quot;a=
ddr=3D192.168.40.3<font face=3D"arial, helvetica, sans-serif">,<span style=
=3D"color:rgb(0,0,0);white-space:pre-wrap">master_clock_rate=3D122.88e6,clo=
ck_source=3Dexternal,time_source=3Dexternal&quot;</span></font>)</font></b>=
</i></span>

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
a via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-use=
rs@lists.ettus.com</a>&gt; =E6=96=BC 2019=E5=B9=B45=E6=9C=882=E6=97=A5 =E9=
=80=B1=E5=9B=9B =E4=B8=8B=E5=8D=889:20=E5=AF=AB=E9=81=93=EF=BC=9A<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><font fa=
ce=3D"arial, helvetica, sans-serif"><span style=3D"color:rgb(0,0,0);font-si=
ze:13px">Hello,</span><br style=3D"padding:0px;margin:0px;color:rgb(0,0,0);=
font-size:13px"><br style=3D"padding:0px;margin:0px;color:rgb(0,0,0);font-s=
ize:13px"><span style=3D"color:rgb(0,0,0);font-size:13px">I am using two N3=
10 USRP&#39;s to create an 8x8 MIMO setup. But, I am unable to make both of=
=C2=A0</span><span style=3D"color:rgb(0,0,0);font-size:13px">them work toge=
ther. I am using an example program from the UHD driver -=C2=A0</span><span=
 style=3D"color:rgb(0,0,0);font-size:13px">txrx_loopback_to_file.</span><br=
 style=3D"padding:0px;margin:0px;color:rgb(0,0,0);font-size:13px"><br style=
=3D"padding:0px;margin:0px;color:rgb(0,0,0);font-size:13px"><span style=3D"=
color:rgb(0,0,0);font-size:13px">I give the following command:</span><br st=
yle=3D"padding:0px;margin:0px;color:rgb(0,0,0);font-size:13px"><br style=3D=
"padding:0px;margin:0px;color:rgb(0,0,0);font-size:13px"><span style=3D"col=
or:rgb(0,0,0);font-size:13px">./txrx_loopback_to_file --tx-rate 7.68e6 --rx=
-rate 7.68e6 --tx-freq 2.60e9 --rx-freq=C2=A0</span><span style=3D"color:rg=
b(0,0,0);font-size:13px">2.60e9 --tx-gain 70 --rx-gain 60 --tx-channels &qu=
ot;0,1,2,3&quot; --rx-channels &quot;0,1,2,3&quot;=C2=A0</span><span style=
=3D"color:rgb(0,0,0);font-size:13px">--tx-args=C2=A0</span><span style=3D"c=
olor:rgb(0,0,0);font-size:13px">&quot;addr=3D192.168.10.2,second_addr=3D192=
.168.20.2,time_source=3Dexternal,clock_source=3Dexternal,master_clock_rate=
=3D122.88e6&quot; --rx-args=C2=A0</span><span style=3D"color:rgb(0,0,0);fon=
t-size:13px">&quot;addr=3D192.168.10.2,second_addr=3D192.168.20.2,time_sour=
ce=3Dexternal,clock_source=3Dexternal,master_clock_rate=3D122.88e6&quot;=C2=
=A0</span><span style=3D"color:rgb(0,0,0);font-size:13px">--settling=C2=A0<=
/span><span style=3D"color:rgb(0,0,0);font-size:13px">1</span><br style=3D"=
padding:0px;margin:0px;color:rgb(0,0,0);font-size:13px"><br style=3D"paddin=
g:0px;margin:0px;color:rgb(0,0,0);font-size:13px"><span style=3D"color:rgb(=
0,0,0);font-size:13px">and only one USRP turns on.</span><br style=3D"paddi=
ng:0px;margin:0px;color:rgb(0,0,0);font-size:13px"><span style=3D"color:rgb=
(0,0,0);font-size:13px">In USRP X300 there were two ways to use multiple US=
RP&#39;s,</span><br style=3D"padding:0px;margin:0px;color:rgb(0,0,0);font-s=
ize:13px"><span style=3D"color:rgb(0,0,0);font-size:13px">1. Use --tx-args =
and --rx-args to specify &quot;addr0,addr1&quot; to access two different US=
RP&#39;s=C2=A0</span><span style=3D"color:rgb(0,0,0);font-size:13px">with -=
-tx-channels and --rx-channels as &quot;0,1&quot;. I tried that here but it=
 gives an error,=C2=A0</span><span style=3D"color:rgb(0,0,0);font-size:13px=
">&quot;Error message: Someone tried to claim this device again&quot;.</spa=
n><br style=3D"padding:0px;margin:0px;color:rgb(0,0,0);font-size:13px"><br =
style=3D"padding:0px;margin:0px;color:rgb(0,0,0);font-size:13px"><span styl=
e=3D"color:rgb(0,0,0);font-size:13px">2. To define just one &quot;addr&quot=
; in --tx-args and --rx-args but have --tx-channels and=C2=A0</span><span s=
tyle=3D"color:rgb(0,0,0);font-size:13px">--rx-channels as &quot;0,1,2,3&quo=
t; (as X300 is 2x2). When tried with N310 with channel values=C2=A0</span><=
span style=3D"color:rgb(0,0,0);font-size:13px">&quot;0,1,2,3,4,5,6,7&quot; =
it gives an error that Tx channels invalid.</span><br style=3D"padding:0px;=
margin:0px;color:rgb(0,0,0);font-size:13px"><br style=3D"padding:0px;margin=
:0px;color:rgb(0,0,0);font-size:13px"><span style=3D"color:rgb(0,0,0);font-=
size:13px">So, could you tell me what is the correct syntax to access two U=
SRP&#39;s?</span><br style=3D"padding:0px;margin:0px;color:rgb(0,0,0);font-=
size:13px"><br style=3D"padding:0px;margin:0px;color:rgb(0,0,0);font-size:1=
3px"><span style=3D"color:rgb(0,0,0);font-size:13px">Thank you</span><br st=
yle=3D"padding:0px;margin:0px;color:rgb(0,0,0);font-size:13px"><span style=
=3D"color:rgb(0,0,0);font-size:13px">Neharika</span></font></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div><br clear=3D"all"><div><br></div></div></div>

--0000000000002f639c0587eb48a7--


--===============3091838615360761121==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3091838615360761121==--

