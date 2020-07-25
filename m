Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F40E922D391
	for <lists+usrp-users@lfdr.de>; Sat, 25 Jul 2020 03:42:42 +0200 (CEST)
Received: from [::1] (port=49366 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jz9Cv-0004zg-EB; Fri, 24 Jul 2020 21:42:37 -0400
Received: from mail-io1-f47.google.com ([209.85.166.47]:35135)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <cherif.chibane@gmail.com>)
 id 1jz9Cs-0004vD-3P
 for usrp-users@lists.ettus.com; Fri, 24 Jul 2020 21:42:34 -0400
Received: by mail-io1-f47.google.com with SMTP id s189so4414107iod.2
 for <usrp-users@lists.ettus.com>; Fri, 24 Jul 2020 18:42:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3tyyLeUYsS63vZbgqvfz8X44hEizDzIF6OAW7NXZPfQ=;
 b=YjtXhTapOjguZnxnnFEmn04V/I4q7Us1KGiRvmOFFdinJXEXdPZzDQEpXkUJjeKznT
 i2U+NjSD9A9qZGoWgPxr/lNxYgUKh3UkVMRDXsCUL1us3XIZXANcjEMUX9hRO69porM8
 SVrd04lY/hc4dohDG6otXeIPwCUYoBDFRSmmToZiGndhRMbJbGdRcVKEXSXdxpaJIrZw
 UTyjgKfw2lDBNhCoFcR26ow6JEH7sK6o14KG0lSc2EnCLdRGParvFFm4XKLrGXeHeebU
 nvZTSnAMjwgxY44WaQsoX0mW9Z5x7b5E6zxv54mTzRZjDOtJYu2qeH47VlE7UY/hEq1O
 dNYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3tyyLeUYsS63vZbgqvfz8X44hEizDzIF6OAW7NXZPfQ=;
 b=kQ4lTCYjC3mfE6Ak/Pg9LHonegQQKGvMWwyUoR9YEX4MLD6ZRx76ABuBhuRLYp8o70
 3aggbOr8/XW/Grmxk/IICICG+gTk0cJJQAgEPWeJ5Tvd2VmxHtC+BbglbCl7PHASliCq
 YMhYlGQSNcY9uDSCMgp3FBam83xa/XQ/ySeFMVv4QXLpp7XGeDjBfPQtGNUZkgHrSqLr
 8064wZ6xqnDaKX2pTbz9AcXqT58oAhIVZZvI836UkhqVAwgMqQEynBqbr+c1hurChZAd
 ybPwa9hd9IxNEo0trbkIypHVJD1snKPIEY0yGIw62CIhJK4O1tXT31NvS62HzyfICuyS
 hPKw==
X-Gm-Message-State: AOAM5327EcgktEZ+4LPshala5CSoAEy37X+sU/F7f4n43PmG9G0nxwpN
 bcLXANu72y2KJFZ4tQ5ns6Me3GxqZSNMNTb8S1g=
X-Google-Smtp-Source: ABdhPJwi8bWjU+UYqOJ441fjsK2Lu2OjGRIyt2+K+Y3Du5Qbk3+GdP95w08E+hA+7u2ZrzPSwnoT4nTl0yDLnoofj4Q=
X-Received: by 2002:a05:6638:519:: with SMTP id
 i25mr13098348jar.99.1595641313379; 
 Fri, 24 Jul 2020 18:41:53 -0700 (PDT)
MIME-Version: 1.0
References: <MA1PR01MB2588ED02A93680AA89569A3490770@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
 <b4de024f-54fd-fe62-0ae0-c0bbe2d0d4f3@ettus.com>
 <MA1PR01MB2588551C27619A8DF3078F6190770@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
 <a24f048a-ee4a-b313-dd10-455af9baf010@ettus.com>
 <MA1PR01MB2588FFEF19FCCDEFB3AA43A190770@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
 <CAN6+Rz=rZTU+zcu473TEE9j5WC6eM=XBkV1ZkQgGH7MMozV3_g@mail.gmail.com>
 <604e2b9e-b869-2a42-fda9-074d9edf2cdf@ettus.com>
In-Reply-To: <604e2b9e-b869-2a42-fda9-074d9edf2cdf@ettus.com>
Date: Fri, 24 Jul 2020 21:41:42 -0400
Message-ID: <CAN6+RzkKGG6hawiSzjsmZjo7YcxSbXu7tpTP5y+aU0Wf3+4QbA@mail.gmail.com>
To: =?UTF-8?Q?Marcus_M=C3=BCller?= <marcus.mueller@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] 4 channel capture using grc and pcie
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: cherif chibane via USRP-users <usrp-users@lists.ettus.com>
Reply-To: cherif chibane <cherif.chibane@gmail.com>
Content-Type: multipart/mixed; boundary="===============2723118306172647511=="
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

--===============2723118306172647511==
Content-Type: multipart/alternative; boundary="000000000000ac496705ab3a3194"

--000000000000ac496705ab3a3194
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks Marcus for the info.

Cherif

On Fri, Jul 24, 2020 at 4:41 PM Marcus M=C3=BCller <marcus.mueller@ettus.co=
m>
wrote:

> Hi Cherif,
> On 24.07.20 11:33, cherif chibane wrote:
>
> BTW, what is the real function og GR-Ettus?
>
> If you're asking this, you don't need it!
>
> gr-ettus (the capitalization matters) is a GNU Radio out-of-tree module
> which you need if you want to develop GNU Radio applications that involve
> custom RFNoC data flows. Few USRP users want to do this.
>
> I am aloso thinking of moving to Ubuntu 20.4 eventually.
> Does it mean that:
> sudo apt install gnuradio
>
> Will install gnuradio, GRC as well as UHD?
>
> Yes.
>
>  How about gr-ettus?
>
> No. But unless you know what you need it for, you don't have to install i=
t.
>
> In case you **really** want it: to install it under Ubuntu 20.04, you hav=
e
> to build it from source. It's easy =E2=80=93 you only need to build gr-et=
tus from
> source, not GNU Radio, and not UHD (don't do either, in fact).
>
> Building it is relatively easy under Ubuntu 20.04 (please check that none
> of the commands below fail before proceeding to the next one)
>
> sudo apt install --install-recommends -y libuhd-dev gnuradio-dev git cmak=
e swig liborc-0.4-dev
> git clone -b maint-3.8 https://github.com/EttusResearch/gr-ettus
> cd gr-ettus
> mkdir build
> cd build
> cmake -DCMAKE_INSTALL_PREFIX=3D$(gnuradio-config-info --prefix) ..
> make -j
> sudo make install
> cp install_manifest.txt ~/gr-ettus-install_manifest.txt
>
>
> Done!
>
> If you should ever need to uninstall your gr-ettus,
>
> sudo xargs rm -rf < ~/gr-ettus-install_manifest.txt
>
>
> Best regards,
>
> Marcus
>
> --
____________
Cherif Chibane

--000000000000ac496705ab3a3194
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div dir=3D"auto">Thanks Marcus for the info.</div></div><div dir=3D"a=
uto"><br></div><div dir=3D"auto">Cherif</div><div><br><div class=3D"gmail_q=
uote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jul 24, 2020 at 4:41 PM=
 Marcus M=C3=BCller &lt;<a href=3D"mailto:marcus.mueller@ettus.com">marcus.=
mueller@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
 =20
   =20
 =20
  <div>
    <p>Hi Cherif,<br>
    </p>
    <div>On 24.07.20 11:33, cherif chibane
      wrote:<br>
    </div>
    <br>
    <blockquote type=3D"cite">
      <pre>BTW, what is the real function og GR-Ettus?</pre>
    </blockquote>
    If you&#39;re asking this, you don&#39;t need it!<br>
    <p>gr-ettus (the capitalization matters) is a GNU Radio out-of-tree
      module which you need if you want to develop GNU Radio
      applications that involve custom RFNoC data flows. Few USRP users
      want to do this.<br>
    </p>
    <blockquote type=3D"cite">
      <pre>I am aloso thinking of moving to Ubuntu 20.4 eventually.
Does it mean that:
sudo apt install gnuradio

Will install gnuradio, GRC as well as UHD?</pre>
    </blockquote>
    <p>Yes.<br>
    </p>
    <blockquote type=3D"cite">
      <pre> How about gr-ettus?</pre>
    </blockquote>
    <p>No. But unless you know what you need it for, you don&#39;t have to
      install it.</p>
    <p>In case you **really** want it: to install it under Ubuntu 20.04,
      you have to build it from source. It&#39;s easy =E2=80=93 you only ne=
ed to
      build gr-ettus from source, not GNU Radio, and not UHD (don&#39;t do
      either, in fact).</p>
    <p>Building it is relatively easy under Ubuntu 20.04 (please check
      that none of the commands below fail before proceeding to the next
      one)<br>
    </p>
    <pre>sudo apt install --install-recommends -y libuhd-dev gnuradio-dev g=
it cmake swig liborc-0.4-dev
git clone -b maint-3.8 <a href=3D"https://github.com/EttusResearch/gr-ettus=
" target=3D"_blank">https://github.com/EttusResearch/gr-ettus</a>
cd gr-ettus
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=3D$(gnuradio-config-info --prefix) ..
make -j
sudo make install
cp install_manifest.txt ~/gr-ettus-install_manifest.txt

</pre>
    <p>Done!</p>
    <p>If you should ever need to uninstall your gr-ettus,</p>
    <pre>sudo xargs rm -rf &lt; ~/gr-ettus-install_manifest.txt

</pre>
    <p>Best regards,</p>
    <p>Marcus<br>
    </p>
    <p></p>
  </div>

</blockquote></div></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" =
data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div>____________</div>=
Cherif Chibane</div></div>

--000000000000ac496705ab3a3194--


--===============2723118306172647511==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2723118306172647511==--

