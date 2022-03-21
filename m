Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 89FCB4E22E5
	for <lists+usrp-users@lfdr.de>; Mon, 21 Mar 2022 10:05:01 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A0F7C38529B
	for <lists+usrp-users@lfdr.de>; Mon, 21 Mar 2022 05:05:00 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="SHJ9Mh7Z";
	dkim-atps=neutral
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 258B1384B4D
	for <usrp-users@lists.ettus.com>; Mon, 21 Mar 2022 05:03:58 -0400 (EDT)
Received: by mail-yb1-f177.google.com with SMTP id g138so6350526ybf.5
        for <usrp-users@lists.ettus.com>; Mon, 21 Mar 2022 02:03:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=Q/jrsSEYpIqYo1KA0AVrZ/nL4T0APOKn+J7N/lUzXrk=;
        b=SHJ9Mh7ZrRYIuISjqShq9riXKeC33AscSLDF5xbEQGQp/rqmraSZKMf3CI3hHgJo1s
         YST9TERVoIa9KYTSp+66oqIYdLn1BbGQJLhQOXdLnppuHIsd6Pot6aJSVQr5TFDe/g0k
         o0riHIvt+2lHaXk6W2SUnDodUSPWbrCjLzDIhfu+eknonG9BhrNE0aicQjqkDrTqC/dH
         VmeQW2HJ7zKvp9py+aQrvp1AaugGCMHYVWUMDiEI6wa5CJPR+9xcrIuMMGRUaTY7U7U8
         4E7fHLM9xcl0EtfNqmPqyJ0g1wICIobBpstQVvxTFNbYkcaV532nyK8nzVGZ9wcdmVpx
         DzWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=Q/jrsSEYpIqYo1KA0AVrZ/nL4T0APOKn+J7N/lUzXrk=;
        b=ZYqTl7HmJGMQAdkRUziLM7aDjpMVi5/00firklnn4dbvStU2o0/X3dw5dI7PapDP5n
         HNIekCVBTu96pvxyDgveXCGLBs0ZVeiXU+eQwQFd++hlNBEs8AfdKARGf8vJvWSxiE1z
         yMbj7FB76SxqwTUxM3c+jOuriONz8nKACFmVseoVGcgleywfK4MwgCTt5Wyjonzf0aje
         ija/ShBM1Nqoc1Gw6ptXj62FPY85ZBKsap/+MgUNrO4cIll6uYsoxyQVQSrT+hDW5LhP
         GcjAeuHOz6k8gmlDVqrratcYA4wjjj5HeGIo5jsMlLp8HmPLoBswEug1Fg0vhceAYd/J
         cYvg==
X-Gm-Message-State: AOAM531ugp1mhn5u9hFc7ASUsFAAoX7QhNwLz9AIxqkVGEU3JkBNTx0N
	gd8eywoVEUhkF0erDJeyz728/UH90SFtVqqpzHPOhibw1271Ddo2JII=
X-Google-Smtp-Source: ABdhPJx416gm3KyN3oJbn5Hd/taHJElWpBqL9YFtMq6JHhUh+DuR8vhCooJlYEtOUtsP0KLPy8DF/vfvFk/S6kTURm0=
X-Received: by 2002:a25:943:0:b0:633:883b:3e21 with SMTP id
 u3-20020a250943000000b00633883b3e21mr21316337ybm.132.1647853437821; Mon, 21
 Mar 2022 02:03:57 -0700 (PDT)
MIME-Version: 1.0
From: sp h <stackprogramer@gmail.com>
Date: Mon, 21 Mar 2022 12:33:46 +0330
Message-ID: <CAA=S3PsQ7758e5AzDEyNuAsgA6xwm1NQXMZHzAgzfgqDXVB8xQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: 7PRGCFBHU3QSLQXUIY327WBJQA3YZQFX
X-Message-ID-Hash: 7PRGCFBHU3QSLQXUIY327WBJQA3YZQFX
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Default CHDR_W is 64 for a RFNOC blocks, How can increased samples buffer in RFNOC block to 4096...
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7PRGCFBHU3QSLQXUIY327WBJQA3YZQFX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3922325790132209312=="

--===============3922325790132209312==
Content-Type: multipart/alternative; boundary="000000000000cda51205dab6c60f"

--000000000000cda51205dab6c60f
Content-Type: text/plain; charset="UTF-8"

Default CHDR_W is 64 for RFNOC blocks when I want to create a custom RFNOC
block,  I know that the RFNOC bus block is AXI4, So for accessing samples I
work with some registers in Verilog code ...

m_in_payload_tdata
Details I/Q samples are below...
I/real in [63:32], Q/imaginary in [31:0] (sc32).

In Gnuradio when we want to work with samples buffer samples is 4096 ...
but for RFNOC we faced 32 samples........
How can increased samples buffer in RFNOC block to 4096...?
Any idea, any help ...?
thanks in advance

--000000000000cda51205dab6c60f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Default CHDR_W is 64 for RFNOC blocks when I want to creat=
e a custom RFNOC block,=C2=A0 I know that the RFNOC bus block is AXI4, So f=
or accessing samples I work with some registers in Verilog code ...<div><br=
></div><div><div style=3D"font-family:&quot;Droid Sans Mono&quot;,&quot;mon=
ospace&quot;,monospace,&quot;Droid Sans Fallback&quot;;font-size:14px;line-=
height:19px;white-space:pre"><div style=3D"color:rgb(0,0,0)">m_in_payload_t=
data</div><div style=3D"color:rgb(0,0,0)">Details I/Q samples are below...<=
/div><div style=3D""><div style=3D"line-height:19px"><div style=3D"color:rg=
b(0,0,0)"><span style=3D"color:rgb(0,128,0)">I/real in [63:32], Q/imaginary=
 in [31:0] (sc32).</span></div><div style=3D"color:rgb(0,0,0)"><br></div></=
div></div></div></div><div><div>In Gnuradio when we want to work with sampl=
es buffer samples is 4096 ...</div><div>but for RFNOC we faced=C2=A032 samp=
les........</div><div>How can increased samples=C2=A0buffer in RFNOC block =
to 4096...?</div><div>Any idea, any help ...?</div><div>thanks in advance</=
div><div><br></div><div><br></div><div><br></div></div></div>

--000000000000cda51205dab6c60f--

--===============3922325790132209312==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3922325790132209312==--
