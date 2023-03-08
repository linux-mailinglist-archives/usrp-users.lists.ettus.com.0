Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 38A556B0F72
	for <lists+usrp-users@lfdr.de>; Wed,  8 Mar 2023 17:56:53 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2B615385194
	for <lists+usrp-users@lfdr.de>; Wed,  8 Mar 2023 11:56:52 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1678294612; bh=JhxwXyvaj9d5XsxhwFjISAjcuiW0K4dYIJia7AunUTw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=gT6kGuIlQ658xk/mVQjIfzIToeiguLqoHpgiEE5PmA3t0IlZ8AFxQCgdqy0uI/LMP
	 BUdAAjNtx34I8Zaisa0bWSIYsqXEPQgCwCfCnEKLRWRBEy4P78mGPSkoWhmCOougBg
	 NnRbMeSQnvQKW+xPVKc+2Fi2OPG9gDvDEzjqKHaI/TwB7Ny0T1IGB4qcUTb9Nk0u9j
	 Lt2IepTiPgknC+X2QBI7OvRqQkulAnyDx8BENFIyPfgRc2ABmAlfXL5SY0wZZ4Vn1Q
	 /zE1FJq3OTJfPcFGIrCizHpaG4LpOIJ9voJ6wtoA3/B5sGL1KbGYrVk8OtyseG+dfN
	 gMhTL/Qx0WPhQ==
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 54AC038516C
	for <usrp-users@lists.ettus.com>; Wed,  8 Mar 2023 11:54:13 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ASwKWkj+";
	dkim-atps=neutral
Received: by mail-qv1-f45.google.com with SMTP id ks17so11493625qvb.6
        for <usrp-users@lists.ettus.com>; Wed, 08 Mar 2023 08:54:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678294452;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gEu6SThcPkE344o2NRwIiMFa1r+xmj3cTmrrp2nLRUI=;
        b=ASwKWkj+RwewIdxhZqsGxgj9qU6LAiAf7mwmgftZhMqgLMY7jKAtALVr0rRh7i6Ddm
         xAg7ZN1wSkE88wy0aPQA9JKBb5dag2BkgS/yLpBJMqFiQI/MIVk7rRCqFwNWJgAe1qf0
         KL5gkIrhONNx2XncK1WAf0lbuENknWMSpFSZ+PLeKSjp8/agoTUFkjRj2+mctJkU+F9G
         uKketYD8TdLRUTEQ4HWn4Fyw9h6/fMryBURCFytBXwC+G6yUd7z0rkX3lipKVomZ0771
         xIsVGKQ4S5PyibvbiY5GaUiGG60cg6f9rLj7VgSGscPDUyVAM7fRwuwessmCSs+/D7G1
         SayA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678294452;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=gEu6SThcPkE344o2NRwIiMFa1r+xmj3cTmrrp2nLRUI=;
        b=Z3iRjjuzKktFN8x+ZjNoa5sF7V2shON0KUGsRQ8RRQlWikVA3fJeazCov44lAuWayb
         tqVkBCFVnin6saz2PTSDbagtXaOviDALbPNEcVn3PanEThyqtJzYy+bvCxek6Bbkomi6
         2WB+IeGLNfe74crgdvMjUx+W6RlO3gJ8HpQyBbTY9SssddM/9JaQpCWTRo3vcaaHrvcO
         dcaYRDA4lNWVYTr6xr/JlbDY74X50pENVZhGyuQaATgAkAvFfAwVn4J37+yaSsLo/AZu
         cbhXmtP/FQCuK7id7T5xjqfdo2GrI790I1YmwkqS964fKEUrAAfXl7m51psyCQBukDCB
         0Frw==
X-Gm-Message-State: AO0yUKW4ZxuQpB6L62D71rskByKwYigSNADiH92Hlr/FTS+cGt6kbpba
	gh7JV/YDWJl79F4OEUw4LYeUvbpeEmc=
X-Google-Smtp-Source: AK7set+mYShu7QAS/15SCMqkEjVI5cGlL9skZQ9PGY5ljgmt+j0uQ6SkQBr1Tf9hkpQtcf5PYP9XFw==
X-Received: by 2002:a05:6214:2a8a:b0:56e:ae3c:129d with SMTP id jr10-20020a0562142a8a00b0056eae3c129dmr37681597qvb.0.1678294452416;
        Wed, 08 Mar 2023 08:54:12 -0800 (PST)
Received: from [192.168.2.193] (bras-base-smflon1825w-grc-06-174-88-54-55.dsl.bell.ca. [174.88.54.55])
        by smtp.googlemail.com with ESMTPSA id y22-20020a05620a44d600b0074270440092sm11825561qkp.51.2023.03.08.08.54.12
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Mar 2023 08:54:12 -0800 (PST)
Message-ID: <748d39f3-39cc-98d5-94ea-b041407742b9@gmail.com>
Date: Wed, 8 Mar 2023 11:54:11 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <E1188D158AA7A048AF99B6A05DA3D62901E208A123@SPROMMAIL04.spengtes.space>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <E1188D158AA7A048AF99B6A05DA3D62901E208A123@SPROMMAIL04.spengtes.space>
Message-ID-Hash: WWW57TYGFYNCI5RLGH57AO4OZQ4VBYMD
X-Message-ID-Hash: WWW57TYGFYNCI5RLGH57AO4OZQ4VBYMD
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: error to use ettus repository
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WWW57TYGFYNCI5RLGH57AO4OZQ4VBYMD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6583950287846694856=="

This is a multi-part message in MIME format.
--===============6583950287846694856==
Content-Type: multipart/alternative;
 boundary="------------Aiguc5kDvurFCaDF1N6BnwET"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------Aiguc5kDvurFCaDF1N6BnwET
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 08/03/2023 05:36, STEFANI, Maurizio (External) via USRP-users wrote:
>
> HI,
>
> I am trying to download some ettus uhd test program (firsto of all=20
> benchmark)
>
> I issued the following command
>
> mau@mau-Vostro-3500:/usr/local/bin$ sudo add-apt-repository=20
> ppa:ettusresearch/uhd
>
> the answer to it is
> Repository: 'deb http://ppa.launchpad.net/ettusresearch/uhd/ubuntu/=20
> <http://ppa.launchpad.net/ettusresearch/uhd/ubuntu/>impish main'
> More info: https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd=20
> <https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd>
> Adding repository.
> Press [ENTER] to continue or Ctrl-c to cancel.
> Found existing deb entry in=20
> /etc/apt/sources.list.d/ettusresearch-ubuntu-uhd-impish.list
> Adding deb entry to=20
> /etc/apt/sources.list.d/ettusresearch-ubuntu-uhd-impish.list
> Found existing deb-src entry in=20
> /etc/apt/sources.list.d/ettusresearch-ubuntu-uhd-impish.list
> Adding disabled deb-src entry to=20
> /etc/apt/sources.list.d/ettusresearch-ubuntu-uhd-impish.list
> Adding key to /etc/apt/trusted.gpg.d/ettusresearch-ubuntu-uhd.gpg with=20
> fingerprint 463896EF9B898A846C7EC0E109FE61056169358E
> Trovato:1 http://old-releases.ubuntu.com/ubuntu=20
> <http://old-releases.ubuntu.com/ubuntu>impish InRelease
> Ignorato:2 http://ppa.launchpad.net/ettusresearch/uhd/ubuntu=20
> <http://ppa.launchpad.net/ettusresearch/uhd/ubuntu>impish InRelease
> Trovato:3 http://old-releases.ubuntu.com/ubuntu=20
> <http://old-releases.ubuntu.com/ubuntu>impish-security InRelease
> Trovato:4 http://old-releases.ubuntu.com/ubuntu=20
> <http://old-releases.ubuntu.com/ubuntu>impish-updates InRelease
> Errore:5 http://ppa.launchpad.net/ettusresearch/uhd/ubuntu=20
> <http://ppa.launchpad.net/ettusresearch/uhd/ubuntu>impish Release
> =C2=A0 404 =C2=A0Not Found [IP: 185.125.190.52 80]
> Lettura elenco dei pacchetti... Fatto
> E: Il repository "http://ppa.launchpad.net/ettusresearch/uhd/ubuntu=20
> impish Release" non ha un file Release.
> N: L'aggiornamento da tale repository non pu=C3=B2 essere eseguito in m=
odo=20
> sicuro ed =C3=A8 quindi disabilitato come impostazione predefinita.
> N: Consultare la pagina man apt-secure(8) per la creazione di un=20
> repository e la configurazione utente.
> mau@mau-Vostro-3500:/usr/local/bin$
>
> I am using ubuntu release 21.10, codename impish
>
> Any suggestions?
>
> Thank you in advance
>
> Maurizio Stefani (External)
>
> The information in this e-mail is confidential. The contents may not=20
> be disclosed or used by anyone other than the addressee. Access to=20
> this e-mail by anyone else is unauthorised.
> If you are not the intended recipient, please notify Airbus=20
> immediately and delete this e-mail.
> Airbus cannot accept any responsibility for the accuracy or=20
> completeness of this e-mail as it has been sent over public networks.=20
> If you have any concerns over the content of this message or its=20
> Accuracy or Integrity, please contact Airbus immediately.
> All outgoing e-mails from Airbus are checked using regularly updated=20
> virus scanning software but you should take whatever measures you deem=20
> to be appropriate to ensure that this message and any attachments are=20
> virus free.
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
Doesn't look like a PPA was ever created for the "Impish" release of=20
Ubuntu -- this was a transitional, NOT LTS release.=C2=A0 If you
 =C2=A0 upgrade to Ubuntu 22.04, very-recent Gnu Radio and UHD are alread=
y=20
packaged and can be installed just with
 =C2=A0 "apt".


--------------Aiguc5kDvurFCaDF1N6BnwET
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 08/03/2023 05:36, STEFANI, Maurizio
      (External) via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:E1188D158AA7A048AF99B6A05DA3D62901E208A123@SPROMMAIL04.spengt=
es.space">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span lang=3D"EN-US">HI,<o:p></o:p></span>=
</p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">I am trying to downlo=
ad
            some ettus uhd test program (firsto of all benchmark)<o:p></o=
:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">I issued the followin=
g
            command<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">mau@mau-Vostro-3500:/=
usr/local/bin$
            sudo add-apt-repository ppa:ettusresearch/uhd<o:p></o:p></spa=
n></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></sp=
an></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">the answer to it is<b=
r>
            Repository: 'deb </span><a
            href=3D"http://ppa.launchpad.net/ettusresearch/uhd/ubuntu/"
            moz-do-not-send=3D"true"><span lang=3D"EN-US">http://ppa.laun=
chpad.net/ettusresearch/uhd/ubuntu/</span></a><span
            lang=3D"EN-US"> impish main'<br>
            More info: </span><a
            href=3D"https://launchpad.net/~ettusresearch/+archive/ubuntu/=
uhd"
            moz-do-not-send=3D"true"><span lang=3D"EN-US">https://launchp=
ad.net/~ettusresearch/+archive/ubuntu/uhd</span></a><span
            lang=3D"EN-US"><br>
            Adding repository.<br>
            Press [ENTER] to continue or Ctrl-c to cancel.<br>
            Found existing deb entry in
            /etc/apt/sources.list.d/ettusresearch-ubuntu-uhd-impish.list<=
br>
            Adding deb entry to
            /etc/apt/sources.list.d/ettusresearch-ubuntu-uhd-impish.list<=
br>
            Found existing deb-src entry in
            /etc/apt/sources.list.d/ettusresearch-ubuntu-uhd-impish.list<=
br>
            Adding disabled deb-src entry to
            /etc/apt/sources.list.d/ettusresearch-ubuntu-uhd-impish.list<=
br>
            Adding key to
            /etc/apt/trusted.gpg.d/ettusresearch-ubuntu-uhd.gpg with
            fingerprint 463896EF9B898A846C7EC0E109FE61056169358E<br>
            Trovato:1 </span><a
            href=3D"http://old-releases.ubuntu.com/ubuntu"
            moz-do-not-send=3D"true"><span lang=3D"EN-US">http://old-rele=
ases.ubuntu.com/ubuntu</span></a><span
            lang=3D"EN-US"> impish InRelease =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0<br>
            Ignorato:2 </span><a
            href=3D"http://ppa.launchpad.net/ettusresearch/uhd/ubuntu"
            moz-do-not-send=3D"true"><span lang=3D"EN-US">http://ppa.laun=
chpad.net/ettusresearch/uhd/ubuntu</span></a><span
            lang=3D"EN-US"> impish InRelease
            <br>
            Trovato:3 </span><a
            href=3D"http://old-releases.ubuntu.com/ubuntu"
            moz-do-not-send=3D"true"><span lang=3D"EN-US">http://old-rele=
ases.ubuntu.com/ubuntu</span></a><span
            lang=3D"EN-US"> impish-security InRelease<br>
            Trovato:4 </span><a
            href=3D"http://old-releases.ubuntu.com/ubuntu"
            moz-do-not-send=3D"true"><span lang=3D"EN-US">http://old-rele=
ases.ubuntu.com/ubuntu</span></a><span
            lang=3D"EN-US"> impish-updates InRelease<br>
            Errore:5 </span><a
            href=3D"http://ppa.launchpad.net/ettusresearch/uhd/ubuntu"
            moz-do-not-send=3D"true"><span lang=3D"EN-US">http://ppa.laun=
chpad.net/ettusresearch/uhd/ubuntu</span></a><span
            lang=3D"EN-US"> impish Release<br>
            =C2=A0 404 =C2=A0Not Found [IP: 185.125.190.52 80]<br>
            Lettura elenco dei pacchetti... </span>Fatto<br>
          E: Il repository "<a
            href=3D"http://ppa.launchpad.net/ettusresearch/uhd/ubuntu"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">http=
://ppa.launchpad.net/ettusresearch/uhd/ubuntu</a>
          impish Release" non ha un file Release.<br>
          N: L'aggiornamento da tale repository non pu=C3=B2 essere esegu=
ito
          in modo sicuro ed =C3=A8 quindi disabilitato come impostazione
          predefinita.<br>
          N: Consultare la pagina man apt-secure(8) per la creazione di
          un repository e la configurazione utente.<br>
          mau@mau-Vostro-3500:/usr/local/bin$ <br>
          <br>
          <o:p></o:p></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">I am using ubuntu
            release 21.10, codename impish<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></sp=
an></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Any suggestions?<o:p>=
</o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></sp=
an></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Thank you in advance<=
o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Maurizio Stefani
            (External)<o:p></o:p></span></p>
      </div>
      <font style=3D"font-size: 9px;">The information in this e-mail is
        confidential. The contents may not be disclosed or used by
        anyone other than the addressee. Access to this e-mail by anyone
        else is unauthorised.<br>
        If you are not the intended recipient, please notify Airbus
        immediately and delete this e-mail.<br>
        Airbus cannot accept any responsibility for the accuracy or
        completeness of this e-mail as it has been sent over public
        networks. If you have any concerns over the content of this
        message or its Accuracy or Integrity, please contact Airbus
        immediately.<br>
        All outgoing e-mails from Airbus are checked using regularly
        updated virus scanning software but you should take whatever
        measures you deem to be appropriate to ensure that this message
        and any attachments are virus free.</font>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    Doesn't look like a PPA was ever created for the "Impish" release of
    Ubuntu -- this was a transitional, NOT LTS release.=C2=A0 If you<br>
    =C2=A0 upgrade to Ubuntu 22.04, very-recent Gnu Radio and UHD are alr=
eady
    packaged and can be installed just with<br>
    =C2=A0 "apt".<br>
    <br>
    <br>
  </body>
</html>

--------------Aiguc5kDvurFCaDF1N6BnwET--

--===============6583950287846694856==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6583950287846694856==--
