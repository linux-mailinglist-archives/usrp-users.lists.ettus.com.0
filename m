Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DA3DC3F691E
	for <lists+usrp-users@lfdr.de>; Tue, 24 Aug 2021 20:35:35 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CB491384458
	for <lists+usrp-users@lfdr.de>; Tue, 24 Aug 2021 14:35:34 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="MgRKYdG7";
	dkim-atps=neutral
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 9B7AF384413
	for <usrp-users@lists.ettus.com>; Tue, 24 Aug 2021 14:34:46 -0400 (EDT)
Received: by mail-qt1-f173.google.com with SMTP id u21so14684341qtw.8
        for <usrp-users@lists.ettus.com>; Tue, 24 Aug 2021 11:34:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=0OaoV3q8CIi4n+p8Q26lRiWDQFIzPng93ePU75Vpn3g=;
        b=MgRKYdG7g+ATerZlfPuz4EDh5hGCpHRKxGc9lnweVD+tmvSDFUbJlexsaOEojAVNC/
         CU5bbbQQoVi3+AtmC7lLx+cHWUUOtaR7KTtKuU/nCOO6XVuCqZUtirAsRv2U7hBOOgwp
         +eLAtAqDubSz9Lg/+DYPZ2up/rPRpXbUgKCqJalRbmhSsDn/tIgLfgA3l7RBSeUgpv+P
         PDWm1Cu0TbLNOlawWG5/zqEFBsnWsrofwLmCsqAYqygdz0Cg/VhKS03pf7OAWUHP6+Dp
         DZzFqpBZTiNQlttaFqmyLOywAo76OkRrM5+8sG+NaiiKgjMjVCYVPGawNDX/N+olnmLG
         vcAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=0OaoV3q8CIi4n+p8Q26lRiWDQFIzPng93ePU75Vpn3g=;
        b=fVKUo35N8tkuSfOFTLgPGWq7sSgiBMkOPR8CZjN61hRe3YHTwBZiE/D4Mat+uBFXsU
         4p0ka9icK2QyI0kIZEN0u8atWONTtwYFdnta71wQ7LQVlnFGp5WHjhKgDIDS++OBK+K5
         ip3olkDGjXvqVtOZoNGk4CkfdwZzEai7VI3Sx/DlfP4/zm6mgpPntQZo/NzDORpf8CjO
         pH2KVEbf/l2RCLVuZGer8hw+rdt4h5qDUnBgaC56NGP1Mw3Zh2zcZ6s8AOU42TSh46eZ
         Dyb84Ouh9D08UZTdFnY3OQB1W0xQ8S8dg73g7G87PbWnDD4eQDqRxkmJpXi0YE/sZgx5
         WqbA==
X-Gm-Message-State: AOAM533NDqP2forqyharehJmXb216vksd481jAgzIA4i9xoCah75V73S
	/5qTiGOOq3CuldBB0Luhgbl47T2YWv1ABw==
X-Google-Smtp-Source: ABdhPJyIQW7UK70MlsFuSgy1vwDW6sT0inUuFpPV4peoisDPFt5oaILz6Z0j9sBba1UdXwVzyD+qbg==
X-Received: by 2002:ac8:66d8:: with SMTP id m24mr35145514qtp.39.1629830085785;
        Tue, 24 Aug 2021 11:34:45 -0700 (PDT)
Received: from [192.168.2.19] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id x8sm8503584qts.69.2021.08.24.11.34.45
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Aug 2021 11:34:45 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <0PsGUOgpZFlGZZ0QnTAZ3K1lOSZkZUXTi40xILdNI@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <e025fa07-4a3f-1516-ecc1-d96f7c3ac9a9@gmail.com>
Date: Tue, 24 Aug 2021 14:34:44 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <0PsGUOgpZFlGZZ0QnTAZ3K1lOSZkZUXTi40xILdNI@lists.ettus.com>
Content-Language: en-US
Message-ID-Hash: WPU5ADYMSBKZG3ZXTSWO5XWCRBET2HL7
X-Message-ID-Hash: WPU5ADYMSBKZG3ZXTSWO5XWCRBET2HL7
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Python documentation / interfacing with GPSDO
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WPU5ADYMSBKZG3ZXTSWO5XWCRBET2HL7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4386970056748090886=="

This is a multi-part message in MIME format.
--===============4386970056748090886==
Content-Type: multipart/alternative;
 boundary="------------D2ADBAF63E46BFE3C870E9F3"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------D2ADBAF63E46BFE3C870E9F3
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-08-24 2:16 p.m., thebouleoffools@gmail.com wrote:
>
> This is maybe a dumber question, but is there a way to use those=20
> functions if I=E2=80=99m using gnuradio / gr-ettus? The rfnoc graph is =
created=20
> by:
>
> rfnoc_graph =3D ettus.rfnoc_graph(uhd.device_addr(=E2=80=9C,=E2=80=9D.j=
oin((=E2=80=98=E2=80=98,=E2=80=99=E2=80=99))))
>
> Where uhd in this context is from the gnuradio library. I=E2=80=99ve be=
en=20
> digging through the gr-ettus source code to figure out where it=20
> eventually gets back to the real uhd library, which appears to be in=20
> ettus_swig.py, but then I=E2=80=99m not sure where to go from there. Is=
 there=20
> a way to use the real uhd library with an rfnoc_graph that=E2=80=99s al=
ready=20
> been created by gr-ettus?
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
Not sure.

I know that in gr-uhd, there's a "catch all" get_device function that=20
gets you access to the underlying multi_usrp object:

https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__block.html#a=
4c3da4cab1096663ff720d3eb134927e



--------------D2ADBAF63E46BFE3C870E9F3
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-08-24 2:16 p.m.,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:thebouleoffool=
s@gmail.com">thebouleoffools@gmail.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:0PsGUOgpZFlGZZ0QnTAZ3K1lOSZkZUXTi40xILdNI@lists.ettus.c=
om">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>This is maybe a dumber question, but is there a way to use
        those functions if I=E2=80=99m using gnuradio / gr-ettus? The rfn=
oc
        graph is created by: </p>
      <p>rfnoc_graph =3D
        ettus.rfnoc_graph(uhd.device_addr(=E2=80=9C,=E2=80=9D.join((=E2=80=
=98=E2=80=98,=E2=80=99=E2=80=99))))</p>
      <p>Where uhd in this context is from the gnuradio library. I=E2=80=99=
ve
        been digging through the gr-ettus source code to figure out
        where it eventually gets back to the real uhd library, which
        appears to be in ettus_swig.py, but then I=E2=80=99m not sure whe=
re to
        go from there. Is there a way to use the real uhd library with
        an rfnoc_graph that=E2=80=99s already been created by gr-ettus?</=
p>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    Not sure.<br>
    <br>
    I know that in gr-uhd, there's a "catch all" get_device function
    that gets you access to the underlying multi_usrp object:<br>
    <br>
<a class=3D"moz-txt-link-freetext" href=3D"https://www.gnuradio.org/doc/d=
oxygen/classgr_1_1uhd_1_1usrp__block.html#a4c3da4cab1096663ff720d3eb13492=
7e">https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__block.ht=
ml#a4c3da4cab1096663ff720d3eb134927e</a><br>
    <br>
    <br>
  </body>
</html>

--------------D2ADBAF63E46BFE3C870E9F3--

--===============4386970056748090886==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4386970056748090886==--
