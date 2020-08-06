Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8276823DEE1
	for <lists+usrp-users@lfdr.de>; Thu,  6 Aug 2020 19:33:54 +0200 (CEST)
Received: from [::1] (port=53148 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k3jm4-0003gh-7X; Thu, 06 Aug 2020 13:33:52 -0400
Received: from mail-qt1-f171.google.com ([209.85.160.171]:44050)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <qiu.guowang007@gmail.com>)
 id 1k3jm0-0003YB-Ml
 for usrp-users@lists.ettus.com; Thu, 06 Aug 2020 13:33:48 -0400
Received: by mail-qt1-f171.google.com with SMTP id h21so30558943qtp.11
 for <usrp-users@lists.ettus.com>; Thu, 06 Aug 2020 10:33:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=7BJhFV1ilVNb8tMiY07XvPu5keFrTr9houJnbPEpscg=;
 b=tc3GwI8Bg9ghZmhthlF6PbsWhVC+AiDTxnT/M9xTqN6/KWS+RPqaPhKdZwHVRMkW2j
 CPAcQeSJBWVMKlv2/VLVD+r93/9FeEoBLx5ZE+ETs4I3knvmKoQVGz3kXGe8nOYjC87V
 /o0DUdzjvY9c77zfPp5RUTGNH0r0P+p3Wq5RVGXwGrVd90oMRmEy3HmA/xnN7V51eXmx
 EPfnR/KbnooCdYc/nisJ+NlPtpPaX9QjPDCj7grjkqJ92OqAKxcKGbRVpY6CRkb8K80Y
 gMOVmgelsa5WdtzsmRzravYZUM6jIdA9wokOvzU4KtQ4S88YzDjcvOFSN4iZGheB27zD
 rP4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=7BJhFV1ilVNb8tMiY07XvPu5keFrTr9houJnbPEpscg=;
 b=LMRZcXiK1ghJIPFEmCgfRqwsP5fZKLMjlQPaVDzcwtH6Mfg85/LWgI7ZFLlWPdOAog
 kvA0CJHhi0ha2RRUzXSKyXQHYJzblasziAA6Nfy12YAjcRt1LexsXEaOJ+W/fm2u2HK+
 MQbeA4qjhAx+TPUr4C2JvnjvXzuEt47XpTlL+TmW4y10DLpgun9QXLzoyBavP3/+hIlx
 kr+UyrQ/H+M4G8+wHX4JGiSrsgO91XAo9VdvZbqDtyodtzPFUTE1ZFwnNhbN8HCS2NV3
 hGNyrw0qRhRHnDPkB9iOHRL8e2dQyFJviQ4txNG4ez8SWJM33vbKd6jJU7+K1dIb6/ov
 aY7g==
X-Gm-Message-State: AOAM530zYQcY6LvBANZ/XbKDMoQ12fTs1vi+9G2aKinvD2ZvNqK1D85w
 57kTUwVB8tY/nEvMZ/aA6UADSzCQ4/ZbDXKxG4/oWr7+
X-Google-Smtp-Source: ABdhPJxSZHvpFbm4WCbJwHFMal15Sv/OrUXQFjsU7hHSN6lPM/Y3B9k/fcRovxyzFjuy7DOtBtspVSquF2AwSaj26SE=
X-Received: by 2002:ac8:6b84:: with SMTP id z4mr9887738qts.279.1596735187870; 
 Thu, 06 Aug 2020 10:33:07 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 7 Aug 2020 01:32:56 +0800
Message-ID: <CACjmV_=fW9LdJPb0TtAgP_QH19cSDD13BgRkvDzOd1JohUJ8TQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Cc: Damon Qiu <qiu.guowang007@gmail.com>
Subject: [USRP-users] issue about subdev spec
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
From: Damon qiu via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Damon qiu <qiu.guowang007@gmail.com>
Content-Type: multipart/mixed; boundary="===============0665506295547866416=="
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

--===============0665506295547866416==
Content-Type: multipart/alternative; boundary="000000000000ac67fb05ac38e1be"

--000000000000ac67fb05ac38e1be
Content-Type: text/plain; charset="UTF-8"

Hi all,

I am using two USRP X310s to transmit signals on 2 channels. The two USRP
are synchronized through a octoclock-g.

A multi_usrp object is used to control those two USRP, device address is
set to addr0=192.168.40.2,addr1=192.168.60.2. I want to set two USRP
transmitting signal at RFA at the same time. I tried two ways to set up the
tx channel and subdev spec:

Method 1: The TX frontend specification is set to A:0 for both two mboard.
d_dev->set_tx_subdev_spec("A:0");
or
d_dev->set_tx_subdev_spec("A:0", 0);
d_dev->set_tx_subdev_spec("A:0", 1);

uhd::stream_args_t stream_args(tx_cpu, tx_otw);
stream_args.channels = {0, 1};
uhd::tx_streamer::sptr tx_stream = d_dev->get_tx_stream(stream_args);

Method 2: The TX frontend specification is set to "A:0 B:0"for both two
mboard.
d_dev->set_tx_subdev_spec("A:0 B:0");
or
d_dev->set_tx_subdev_spec("A:0 B:0", 0);
d_dev->set_tx_subdev_spec("A:0 B:0", 1);

uhd::stream_args_t stream_args(tx_cpu, tx_otw);
stream_args.channels = {0, 2};
uhd::tx_streamer::sptr tx_stream = d_dev->get_tx_stream(stream_args);

In the above two methods, there is a certain probability (about 10% to 30%)
that the two transmission channels are on the same motherboard. I guess
this is a bug of UHD.

OS: Ubuntu 18.04
UHD: UHD-3.15.LTS

Please CC me as I can only receive the daily digest of the mailing list.

Best regards,
Damon

--000000000000ac67fb05ac38e1be
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<br><br>I am using two USRP X310s=C2=A0to transmit =
signals on 2 channels. The two USRP are synchronized through a octoclock-g.=
<br><br>A multi_usrp object is used to control those two USRP, device addre=
ss is set to addr0=3D192.168.40.2,addr1=3D192.168.60.2. I want to set two U=
SRP transmitting=C2=A0signal at RFA at the same time. I tried two ways to s=
et up the tx channel and subdev spec:<br><br>Method 1: The TX frontend spec=
ification is set to A:0 for both two mboard.<br>d_dev-&gt;set_tx_subdev_spe=
c(&quot;A:0&quot;);<br>or<br>d_dev-&gt;set_tx_subdev_spec(&quot;A:0&quot;, =
0);<br>d_dev-&gt;set_tx_subdev_spec(&quot;A:0&quot;, 1);<br><br>uhd::stream=
_args_t stream_args(tx_cpu, tx_otw);<br>stream_args.channels =3D {0, 1};<br=
>uhd::tx_streamer::sptr tx_stream =3D d_dev-&gt;get_tx_stream(stream_args);=
<br><br>Method 2: The TX frontend specification is set to &quot;A:0 B:0&quo=
t;for both two mboard.<br>d_dev-&gt;set_tx_subdev_spec(&quot;A:0 B:0&quot;)=
;<br>or<br>d_dev-&gt;set_tx_subdev_spec(&quot;A:0 B:0&quot;, 0);<br>d_dev-&=
gt;set_tx_subdev_spec(&quot;A:0 B:0&quot;, 1);<br><br>uhd::stream_args_t st=
ream_args(tx_cpu, tx_otw);<br>stream_args.channels =3D {0, 2};<br>uhd::tx_s=
treamer::sptr tx_stream =3D d_dev-&gt;get_tx_stream(stream_args);<br><br>In=
 the above two methods, there is a certain probability (about 10% to 30%) t=
hat the two transmission channels are on the same motherboard. I guess this=
 is a bug of UHD.<br><br>OS: Ubuntu 18.04<br>UHD: UHD-3.15.LTS<br><br>Pleas=
e CC me as I can only receive the daily digest of the mailing list.<br><br>=
Best regards,<br>Damon<br></div>

--000000000000ac67fb05ac38e1be--


--===============0665506295547866416==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0665506295547866416==--

