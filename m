Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C92DA59FD83
	for <lists+usrp-users@lfdr.de>; Wed, 24 Aug 2022 16:46:54 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 421DA38D700
	for <lists+usrp-users@lfdr.de>; Wed, 24 Aug 2022 10:46:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1661352413; bh=YC7QZ1FbxPc2vRF8ATV1K1TEuln6I/AcQm++AB0RUz4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=TGg4Dn7b+y/adk9T/z7x1uEn3XgrvzQ232bW/33UVkvaOyFkjyVsPZnssmQlgnnCj
	 sDpPwPGyZn3htaAuTchPEZcmxsv4aC48/90r0jL+2cgpTtvtU/VIRUyr11zjHOplmY
	 CGMYV50wQND669RglK8g3CoJQdzL8Lew2/9TXhc98bvxT09Qznf8ix36tDmYTQt/SE
	 9s00BysP+5N9ILcK6MKkvgmmwTJLxbmz55K44Bngmb6aPW0BtmKzX0yTrjVTmEJc/c
	 7fyS0BgVUOzV1xK+fFZrmMocmmzaNyjcnaYR/3/LBsPp6qHXNO6dBm6ZjGmybqUkuX
	 NNnQC4/m5vtuQ==
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	by mm2.emwd.com (Postfix) with ESMTPS id B9FDF38491B
	for <usrp-users@lists.ettus.com>; Wed, 24 Aug 2022 09:35:11 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="IEBE3fkj";
	dkim-atps=neutral
Received: by mail-qk1-f181.google.com with SMTP id a15so12631851qko.4
        for <usrp-users@lists.ettus.com>; Wed, 24 Aug 2022 06:35:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc;
        bh=+Tr+epow/aoPcfk4ulq5PMv1PcDpCiHfyHu8CRZ1WmU=;
        b=IEBE3fkjiy/eOHnCdkouedjTISNfb/dqVf59w6x/tl1FFEKBLPQvHNroWb9R6YmbhE
         zCB4n8PZbfx4kAN0/8QqHpbJpuke1EFqpzAlzKwOFpCKrkXMvRrGwNLjYXtYN2YieCHQ
         UeF515HI79W1ujI3ueTtZ4rMDz1cy9a8xQ9nR/2sTrzCLs8kEoFFl4Z/7Z8R1t1fEgQD
         6LjS8Hon1xP+AnhoqW45UiHhveXaTsSHN3/hYLNgkOuDtbMPxKRykD4L5TOuc5r4A+oM
         qWM6hiJeXUObROIywWluwiKyfPZ52S1O1e/3iIQ4OLM+HaQDh8mM5wRxCZldXmSOMZPy
         uGtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc;
        bh=+Tr+epow/aoPcfk4ulq5PMv1PcDpCiHfyHu8CRZ1WmU=;
        b=pM4Coch7Mkmk9YcN4qPu2dWFrpuZA9UUB/UOX5n3pmjO72RE9g+ccfygKLeUDbomkz
         LArES+bWkz5aJegQI2yXqa0JpGWJGmwv/c6jubCj4KTYR8P+2P9llukbz6Hh1ag2fmIB
         vicYsvllbQ/iXSi4SIho8lP7IeId+AP2whCiXmBHb/0pnBVQbDxu0hBWLuaHOAPLETDV
         ObU+uBqFMvlDNWdyfVf3lLL71Z5bBH2CIAJEsJpAbS+II8Yd5TGGcQOExoAmxMKhn17g
         nhWAD2LFPoxwsA7UJNYpJHt7YZekZpHSEcj2x9Bvxdv+geh4avAEGz+vFhIo7ChsPFro
         ELRA==
X-Gm-Message-State: ACgBeo3wHT0YPcpppSn73dEorJ64a7gR9ZaVDQWX98nQLjP1bxWNPHD7
	QwHn7B3W9LFb01DBiE45sAAnsYzWusA=
X-Google-Smtp-Source: AA6agR5gWKPp2ENGyWrQIWt6tjQXvk6I64YZ3zaYxO6joNL5ZE2caXww8O7HStyeTZsa/CdqfQgTmA==
X-Received: by 2002:a05:620a:4154:b0:6bb:822c:ccd3 with SMTP id k20-20020a05620a415400b006bb822cccd3mr19906551qko.1.1661348109668;
        Wed, 24 Aug 2022 06:35:09 -0700 (PDT)
Received: from [192.168.2.210] (bras-base-smflon1825w-grc-09-174-93-2-254.dsl.bell.ca. [174.93.2.254])
        by smtp.googlemail.com with ESMTPSA id fb24-20020a05622a481800b003434d1a7a14sm12579363qtb.62.2022.08.24.06.35.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Aug 2022 06:35:08 -0700 (PDT)
Message-ID: <ae2899fc-3aa4-8a77-c65b-91c1ad0ae487@gmail.com>
Date: Wed, 24 Aug 2022 09:35:07 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Andrea Valori <andrea.valori@innovatrieste.it>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <PA4PR01MB9066C97A442469DC24AF24B28C6D9@PA4PR01MB9066.eurprd01.prod.exchangelabs.com>
 <832adf9f-0e16-7acb-186a-22014ff33d47@gmail.com>
 <PA4PR01MB9066FBD4D41341BC5C1913368C739@PA4PR01MB9066.eurprd01.prod.exchangelabs.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <PA4PR01MB9066FBD4D41341BC5C1913368C739@PA4PR01MB9066.eurprd01.prod.exchangelabs.com>
Message-ID-Hash: ZSVG56AR4XEEPQIH2OBMJOU5TSWBGLKV
X-Message-ID-Hash: ZSVG56AR4XEEPQIH2OBMJOU5TSWBGLKV
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Wide spectrum
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZSVG56AR4XEEPQIH2OBMJOU5TSWBGLKV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9014428457593578226=="

This is a multi-part message in MIME format.
--===============9014428457593578226==
Content-Type: multipart/alternative;
 boundary="------------AqiAWsyvggKmGB656Lpyjesu"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------AqiAWsyvggKmGB656Lpyjesu
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-08-24 07:31, Andrea Valori wrote:
>
> Dear Marcus,
>
> Thanks for your reply.
>
> To put some numbers into perspective:
>
> I am looking at acquiring something in the order of 300 MHz of LTE=20
> spectrum (about 6 times the bandwidth of the B200. Even if I think to=20
> use half of the bandwidth, that brings the factor to 12).
>
> I would like to repeat the measurement at least 5-10 times, to be able=20
> to have an estimation of the variability of the signal. Of course,=20
> this opens a whole pandora vase on the combined effect of: duration of=20
> the measurement, syncing of the measurement rate with the signal and=20
> so on, leading to the fact that is possible to miss signals if they=20
> are rare and in short bursts (typica of LTE)=E2=80=A6 but let=E2=80=99s=
 park this=20
> issue for the moment.
>
> Taking the limit you mentioned and doubling it to stay conservative, I=20
> should be able to acquire the 120 spectrums in 120*0.2=3D2.4 seconds=E2=
=80=A6=20
> that is way faster than what I was hoping!
>
> When I used GNURadio, I created a script that run at a specific=20
> central frequency, saving the data on a file, called the script=20
> recursively with different central frequencies, and then loaded and=20
> =E2=80=9Cstitched=E2=80=9D the data. The most consuming time, was possi=
bly the=20
> saving-loading procedure.
>
By "calling the script recursively" I assume you mean iteratively? So=20
re-starting the entire Gnu Radio framework every time?
 =C2=A0 That would take a LONG time.

I'd post on the discuss-gnuradio mailng list.=C2=A0 Someone has probably=20
already done this--in fact I did one many many years ago
 =C2=A0 with GR 3.6, which is now horribly obsolete.

With stream tags, you should be able to know precisely which samples go=20
with which frequency, and use that to direct your logging.
 =C2=A0 Indeed, the "File Meta Sink" records all the tags along with the=20
samples....



> I did expect that for such a =E2=80=9Cstandard=E2=80=9D application (ac=
quire a=20
> wideband signal) there was something ready made in GNURadio, but could=20
> not find it.
>
> As said, soapy_power does exactly this, but being not actively=20
> developed, I was hoping in finding something else=E2=80=A6
>
> Thanks and regards,
>
> Andrea
>
> *From:* Marcus D. Leech <patchvonbraun@gmail.com>
> *Sent:* Thursday, August 18, 2022 4:35 PM
> *To:* Andrea Valori <andrea.valori@innovatrieste.it>;=20
> usrp-users@lists.ettus.com
> *Subject:* Re: [USRP-users] Wide spectrum
>
>
> =09
>
> You don't often get email from patchvonbraun@gmail.com=20
> <mailto:patchvonbraun@gmail.com>. Learn why this is important=20
> <https://aka.ms/LearnAboutSenderIdentification>
>
> =09
>
> On 2022-08-18 10:18, Andrea Valori via USRP-users wrote:
>
>     Dear all,
>
>     I am trying to acquire a =E2=80=9Cwide=E2=80=9D spectrum with the B=
200 and B200
>     mini. For wide I mean wider than the bandwidth of the board, and
>     therefore some way of fast multiple acquisitions with =E2=80=9Cfreq=
uency
>     hopping=E2=80=9D and =E2=80=9Cstitching=E2=80=9D.
>
>     Do you have a good solution to recommend? I tried soapy_power
>     (which seems working but it is not maintained) and GNURadio (with
>     it, I did not manage to have a =E2=80=9Cfast frequency hopping=E2=80=
=9D, and
>     therefore the acquisition is very time consuming, with several
>     seconds delay at each tuning).
>
>     Thanks and best regards,
>
>     Andrea
>
> How fast do you need to go?=C2=A0 The B2xx chip, the AD9361 isn't known=
 for=20
> its ability to rapidly tune at timescales below about
> =C2=A0 100ms.
>
> ________________________________________
>
> *Informativa sulla privacy e sulla sicurezza*
>
> Questo messaggio pu=C3=B2 contenere informazioni confidenziali ed =C3=A8=
=20
> destinato esclusivamente all'indirizzo in intestazione. Il materiale e=20
> le informazioni contenuti e/o collegati a questo messaggio sono=20
> riservati e non divulgabili a terzi. Ai sensi della legge sul diritto=20
> d'autore e del codice civile, sono vietate la riproduzione o la=20
> modifica non espressamente autorizzata di questo materiale, o di parte=20
> di esso, con qualsiasi mezzo, in quanto di esclusiva propriet=C3=A0 di=20
> Innova S.p.A. o dei suoi danti causa. Persone diverse dal destinatario=20
> di questo messaggio non possono copiare o distribuire il messaggio=20
> stesso a terzi. Punti di vista od opinioni personali presenti in=20
> questo messaggio sono riconducibili direttamente al solo mittente del=20
> messaggio, e non rappresentano necessariamente il punto di vista o=20
> l'opinione di Innova S.p.A., salvo altrimenti specificato. Essendo=20
> Internet un canale di comunicazione non sicuro, Innova S.p.A. non =C3=A8=
=20
> responsabile di eventuali modifiche, n=C3=A9 della violazione, sottrazi=
one=20
> o soppressione, occorse al messaggio dopo la spedizione da parte del=20
> mittente. Si raccomanda al destinatario di effettuare un controllo=20
> antivirus prima di aprire qualsiasi allegato alla presente. Innova=20
> S.p.A. non =C3=A8 responsabile di eventuali danni occorsi a seguito di=20
> virus informatici accidentalmente trasmessi tramite i contenuti del=20
> presente messaggio. Chiunque riceva questo messaggio per errore, =C3=A8=
=20
> pregato di distruggerlo e di informare immediatamente il mittente con=20
> lo stesso mezzo e cancellarlo dai propri sistemi. Quanto precede ai=20
> fini del rispetto del Regolamento UE 2016/679 in materia di protezione=20
> dei dati personali. Per l'informativa estesa consultare il sito=20
> Internet di Innova S.p.A. sezione Privacy.
>
> *Disclaimer and confidentiality notice*
>
> This e-mail may contain confidential information and is intended only=20
> for the addressee named above and the contents should not be disclosed=20
> to any other person nor copies taken or forwarded. Any views or=20
> opinions presented are solely those of the sender and do not=20
> necessarily represent the views of Innova S.p.A. unless otherwise=20
> specifically stated. As not all internet communications are secure=20
> Innova S.p.A. does not accept legal responsibility for the contents of=20
> this message nor responsibility for any change or breach or=20
> subtraction or suppression of this message after it was sent by the=20
> original sender. We advise you to carry out your own virus check=20
> before opening any attachments as we cannot accept liability for any=20
> damage sustained as a result of any software viruses. Please notify=20
> the sender immediately if you have received this e-mail by mistake and=20
> delete it from your systems. This disclaimer according to GDPR=20
> Regulation EU 2016/679. Privacy-related information is available on=20
> the company website, Privacy section.=20

--------------AqiAWsyvggKmGB656Lpyjesu
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-08-24 07:31, Andrea Valori
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:PA4PR01MB9066FBD4D41341BC5C1913368C739@PA4PR01MB9066.eurprd01=
.prod.exchangelabs.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}@font-face
	{font-family:"Segoe UI";
	panose-1:2 11 5 2 4 2 4 2 2 3;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal">Dear Marcus,<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Thanks for your reply.<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">To put some numbers into perspective:<o:p>=
</o:p></p>
        <p class=3D"MsoNormal">I am looking at acquiring something in the
          order of 300 MHz of LTE spectrum (about 6 times the bandwidth
          of the B200. Even if I think to use half of the bandwidth,
          that brings the factor to 12).<o:p></o:p></p>
        <p class=3D"MsoNormal">I would like to repeat the measurement at
          least 5-10 times, to be able to have an estimation of the
          variability of the signal. Of course, this opens a whole
          pandora vase on the combined effect of: duration of the
          measurement, syncing of the measurement rate with the signal
          and so on, leading to the fact that is possible to miss
          signals if they are rare and in short bursts (typica of LTE)=E2=
=80=A6
          but let=E2=80=99s park this issue for the moment.<o:p></o:p></p=
>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Taking the limit you mentioned and doublin=
g
          it to stay conservative, I should be able to acquire the 120
          spectrums in 120*0.2=3D2.4 seconds=E2=80=A6 that is way faster =
than what
          I was hoping!<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">When I used GNURadio, I created a script
          that run at a specific central frequency, saving the data on a
          file, called the script recursively with different central
          frequencies, and then loaded and =E2=80=9Cstitched=E2=80=9D the=
 data. The most
          consuming time, was possibly the saving-loading procedure.</p>
      </div>
    </blockquote>
    By "calling the script recursively" I assume you mean iteratively?=C2=
=A0=C2=A0
    So re-starting the entire Gnu Radio framework every time?<br>
    =C2=A0 That would take a LONG time.<br>
    <br>
    I'd post on the discuss-gnuradio mailng list.=C2=A0 Someone has proba=
bly
    already done this--in fact I did one many many years ago<br>
    =C2=A0 with GR 3.6, which is now horribly obsolete.<br>
    <br>
    With stream tags, you should be able to know precisely which samples
    go with which frequency, and use that to direct your logging.<br>
    =C2=A0 Indeed, the "File Meta Sink" records all the tags along with t=
he
    samples....<br>
    <br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:PA4PR01MB9066FBD4D41341BC5C1913368C739@PA4PR01MB9066.eurprd01=
.prod.exchangelabs.com">
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">I did expect that for such a =E2=80=9Cstan=
dard=E2=80=9D
          application (acquire a wideband signal) there was something
          ready made in GNURadio, but could not find it.<o:p></o:p></p>
        <p class=3D"MsoNormal">As said, soapy_power does exactly this, bu=
t
          being not actively developed, I was hoping in finding
          something else=E2=80=A6<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Thanks and regards,<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Andrea<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <div>
          <div style=3D"border:none;border-top:solid #E1E1E1
            1.0pt;padding:3.0pt 0cm 0cm 0cm">
            <p class=3D"MsoNormal"><b>From:</b> Marcus D. Leech
              <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patchvonb=
raun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a> <br>
              <b>Sent:</b> Thursday, August 18, 2022 4:35 PM<br>
              <b>To:</b> Andrea Valori
              <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:andrea.va=
lori@innovatrieste.it">&lt;andrea.valori@innovatrieste.it&gt;</a>;
              <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:usrp-u=
sers@lists.ettus.com">usrp-users@lists.ettus.com</a><br>
              <b>Subject:</b> Re: [USRP-users] Wide spectrum<o:p></o:p></=
p>
          </div>
        </div>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <table class=3D"MsoNormalTable" style=3D"width:100.0%" width=3D"1=
00%"
          cellspacing=3D"0" cellpadding=3D"0" border=3D"0" align=3D"left"=
>
          <tbody>
            <tr>
              <td style=3D"background:#A6A6A6;padding:5.25pt 1.5pt 5.25pt
                1.5pt"><br>
              </td>
              <td style=3D"width:100.0%;background:#EAEAEA;padding:5.25pt
                3.75pt 5.25pt 11.25pt" width=3D"100%">
                <div>
                  <p class=3D"MsoNormal"
style=3D"mso-element:frame;mso-element-frame-hspace:2.25pt;mso-element-wr=
ap:around;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizo=
ntal:column;mso-height-rule:exactly"><span
                      style=3D"font-size:9.0pt;font-family:&quot;Segoe
                      UI&quot;,sans-serif;color:#212121">You don't often
                      get email from
                    </span><span style=3D"color:black"><a
                        href=3D"mailto:patchvonbraun@gmail.com"
                        moz-do-not-send=3D"true"><span
                          style=3D"font-size:9.0pt;font-family:&quot;Sego=
e
                          UI&quot;,sans-serif">patchvonbraun@gmail.com</s=
pan></a></span><span
                      style=3D"font-size:9.0pt;font-family:&quot;Segoe
                      UI&quot;,sans-serif;color:#212121">.
                    </span><span style=3D"color:black"><a
                        href=3D"https://aka.ms/LearnAboutSenderIdentifica=
tion"
                        moz-do-not-send=3D"true"><span
                          style=3D"font-size:9.0pt;font-family:&quot;Sego=
e
                          UI&quot;,sans-serif">Learn why this is
                          important</span></a></span><span
                      style=3D"font-size:9.0pt;font-family:&quot;Segoe
                      UI&quot;,sans-serif;color:#212121"><o:p></o:p></spa=
n></p>
                </div>
              </td>
              <td style=3D"width:56.25pt;background:#EAEAEA;padding:5.25p=
t
                3.75pt 5.25pt 3.75pt;align:left" width=3D"75">
                <br>
              </td>
            </tr>
          </tbody>
        </table>
        <div>
          <div>
            <p class=3D"MsoNormal">On 2022-08-18 10:18, Andrea Valori via
              USRP-users wrote:<o:p></o:p></p>
          </div>
          <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
            <p class=3D"MsoNormal">Dear all,<o:p></o:p></p>
            <p class=3D"MsoNormal">I am trying to acquire a =E2=80=9Cwide=
=E2=80=9D
              spectrum with the B200 and B200 mini. For wide I mean
              wider than the bandwidth of the board, and therefore some
              way of fast multiple acquisitions with =E2=80=9Cfrequency h=
opping=E2=80=9D
              and =E2=80=9Cstitching=E2=80=9D.<o:p></o:p></p>
            <p class=3D"MsoNormal">Do you have a good solution to
              recommend? I tried soapy_power (which seems working but it
              is not maintained) and GNURadio (with it, I did not manage
              to have a =E2=80=9Cfast frequency hopping=E2=80=9D, and the=
refore the
              acquisition is very time consuming, with several seconds
              delay at each tuning).<o:p></o:p></p>
            <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
            <p class=3D"MsoNormal">Thanks and best regards,<o:p></o:p></p=
>
            <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
            <p class=3D"MsoNormal">Andrea<o:p></o:p></p>
            <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
          </blockquote>
          <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">How fast =
do
            you need to go?=C2=A0 The B2xx chip, the AD9361 isn't known f=
or
            its ability to rapidly tune at timescales below about<br>
            =C2=A0 100ms.<br>
            <br>
            <o:p></o:p></p>
        </div>
      </div>
      ________________________________________<br>
      <br>
      <b>Informativa sulla privacy e sulla sicurezza</b> <br>
      <br>
      Questo messaggio pu=C3=B2 contenere informazioni confidenziali ed =C3=
=A8
      destinato esclusivamente all'indirizzo in intestazione. Il
      materiale e le informazioni contenuti e/o collegati a questo
      messaggio sono riservati e non divulgabili a terzi. Ai sensi della
      legge sul diritto d'autore e del codice civile, sono vietate la
      riproduzione o la modifica non espressamente autorizzata di questo
      materiale, o di parte di esso, con qualsiasi mezzo, in quanto di
      esclusiva propriet=C3=A0 di Innova S.p.A. o dei suoi danti causa.
      Persone diverse dal destinatario di questo messaggio non possono
      copiare o distribuire il messaggio stesso a terzi. Punti di vista
      od opinioni personali presenti in questo messaggio sono
      riconducibili direttamente al solo mittente del messaggio, e non
      rappresentano necessariamente il punto di vista o l'opinione di
      Innova S.p.A., salvo altrimenti specificato. Essendo Internet un
      canale di comunicazione non sicuro, Innova S.p.A. non =C3=A8
      responsabile di eventuali modifiche, n=C3=A9 della violazione,
      sottrazione o soppressione, occorse al messaggio dopo la
      spedizione da parte del mittente. Si raccomanda al destinatario di
      effettuare un controllo antivirus prima di aprire qualsiasi
      allegato alla presente. Innova S.p.A. non =C3=A8 responsabile di
      eventuali danni occorsi a seguito di virus informatici
      accidentalmente trasmessi tramite i contenuti del presente
      messaggio. Chiunque riceva questo messaggio per errore, =C3=A8 preg=
ato
      di distruggerlo e di informare immediatamente il mittente con lo
      stesso mezzo e cancellarlo dai propri sistemi. Quanto precede ai
      fini del rispetto del Regolamento UE 2016/679 in materia di
      protezione dei dati personali. Per l'informativa estesa consultare
      il sito Internet di Innova S.p.A. sezione Privacy.
      <br>
      <br>
      <b>Disclaimer and confidentiality notice</b> <br>
      <br>
      This e-mail may contain confidential information and is intended
      only for the addressee named above and the contents should not be
      disclosed to any other person nor copies taken or forwarded. Any
      views or opinions presented are solely those of the sender and do
      not necessarily represent the views of Innova S.p.A. unless
      otherwise specifically stated. As not all internet communications
      are secure Innova S.p.A. does not accept legal responsibility for
      the contents of this message nor responsibility for any change or
      breach or subtraction or suppression of this message after it was
      sent by the original sender. We advise you to carry out your own
      virus check before opening any attachments as we cannot accept
      liability for any damage sustained as a result of any software
      viruses. Please notify the sender immediately if you have received
      this e-mail by mistake and delete it from your systems. This
      disclaimer according to GDPR Regulation EU 2016/679.
      Privacy-related information is available on the company website,
      Privacy section.
    </blockquote>
    <br>
  </body>
</html>

--------------AqiAWsyvggKmGB656Lpyjesu--

--===============9014428457593578226==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9014428457593578226==--
