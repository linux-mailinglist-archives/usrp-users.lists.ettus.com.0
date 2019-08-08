Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F74B86438
	for <lists+usrp-users@lfdr.de>; Thu,  8 Aug 2019 16:22:25 +0200 (CEST)
Received: from [::1] (port=42494 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hvjJ8-00070R-P9; Thu, 08 Aug 2019 10:22:22 -0400
Received: from mail-vs1-f43.google.com ([209.85.217.43]:36869)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <snehabvasan@gmail.com>)
 id 1hvjJ5-0006uV-Dm
 for usrp-users@lists.ettus.com; Thu, 08 Aug 2019 10:22:19 -0400
Received: by mail-vs1-f43.google.com with SMTP id v6so63208838vsq.4
 for <usrp-users@lists.ettus.com>; Thu, 08 Aug 2019 07:21:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=VxzWEHB+FkzwPeZLyjTLwHQsoTY6Yi9Pq1OEIUlAdYU=;
 b=J/zH0VRSCsaKwKZgG9zBuH+hjTFzgjfgCHw8fEr8B0z+RvKZQOFp91PcYOfcAt2eWb
 4QcamzflupmNBTEwu7q/gahgHeP2utsM3quwElwiIKPV0PqcX9FjPlGTeWI5Ad3xdqIG
 +fbFkDYGQPXeX6bgy9H1QU66XKw1xxHMdk+vp9Zt3eHg11ONx4FP0/gqBgVpZBkITCJ/
 nNZ6ZKQILGpjf+GWlAkJ766KJq4QT9sIvR2jlwC8n2cb5kCTv+yeRePrAD647708DNDt
 BF/Qf3PPIYSvK9CWLm+y0j94pCkMPoWO4XOgY8+ZMVIZh/Ln47IQjnrGYaNXgnUNTXun
 IiRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=VxzWEHB+FkzwPeZLyjTLwHQsoTY6Yi9Pq1OEIUlAdYU=;
 b=XtvWCvDNCs3cajinthUloVtZn6DICET/8baBXk3NYB+rq/1V28rYWsmFNSv8mudveH
 qJqQaeo1RFSP2+6Mq2OEW7gyJzEmqJrKHV6xN94DFmXvDwTp4mr8/j+2syU9uxt8tu8X
 aGQoNvUfZXZyw5RMrZBbcAQ6dfC3OTVhOjI4wME3FZWxsEugKz3hosXD3liucLRdtYTn
 AEfj3hNq86YGrBpMCnbk/EADCogDYs1jN9zbhvy6Q8SzX/w/ENTxjdN8CKCYNhgVpz07
 dqPFHZ6B2tMR07NRbdsyPhE4xQQ9JWrLGPg70rcO+BlXqdLdPoorqp7P0Ndqaa5ZsWH7
 h6iQ==
X-Gm-Message-State: APjAAAXzzeUFM6ZKCWIx5tTisAddis4i+xCH45pXw9ubdm04h1hPM8Pg
 ZWrxZhVCPjF5UqScoYa7jGPQWZBcaOG08HOYXJpEHA==
X-Google-Smtp-Source: APXvYqwhqS56dMb2YcXEBaP9PJBLEBJleHtfk1tas0h5RLrjwcx2X5UmU4OpD+9qu1H4oWlgb4RUB+Zxu/GuRWwXy2o=
X-Received: by 2002:a67:2dce:: with SMTP id t197mr544104vst.227.1565274098454; 
 Thu, 08 Aug 2019 07:21:38 -0700 (PDT)
MIME-Version: 1.0
References: <CAPLnO-LHCspbvfZjQd4Nmcq4GzxKEEOPBmXeEESSf7vboTy==Q@mail.gmail.com>
In-Reply-To: <CAPLnO-LHCspbvfZjQd4Nmcq4GzxKEEOPBmXeEESSf7vboTy==Q@mail.gmail.com>
Date: Thu, 8 Aug 2019 16:21:27 +0200
Message-ID: <CAPLnO-JWykiKQRB1a1NOoMMXEyTbgXMiFUGk3K70f28LSfK+SQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Fwd: Varying delay in signal reception
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
From: Sneha vasan via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sneha vasan <snehabvasan@gmail.com>
Content-Type: multipart/mixed; boundary="===============7131157154577653791=="
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

--===============7131157154577653791==
Content-Type: multipart/alternative; boundary="0000000000009d54d4058f9bc640"

--0000000000009d54d4058f9bc640
Content-Type: text/plain; charset="UTF-8"

---------- Forwarded message ---------
From: Sneha vasan <snehabvasan@gmail.com>
Date: Thu, Aug 8, 2019 at 2:31 PM
Subject: Varying delay in signal reception
To: <usrp-users@lists.ettus.com>



Hi everyone,

I am transmitting a OFDM modulated random signal padded with zeros which is
generated from the Matlab. I am transmitting this signal using USRP X310.
But I am receiving the continuous random signal with the various delays in
the first burst. This delay in receiving the signal is varying randomly
with should certainly not happen when the parameters are constant.

In my project I am using a 20cm MIMO Cable to connect TX and RX. Can you
please tell how I am receive signal with a constant delay at receiver.

Regards,
Sneha

--0000000000009d54d4058f9bc640
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">---------- Forwarded message ---------<br>From: <b class=3D=
"gmail_sendername" dir=3D"auto">Sneha vasan</b> <span dir=3D"auto">&lt;<a h=
ref=3D"mailto:snehabvasan@gmail.com">snehabvasan@gmail.com</a>&gt;</span><b=
r>Date: Thu, Aug 8, 2019 at 2:31 PM<br>Subject: Varying delay in signal rec=
eption<br>To:  &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users=
@lists.ettus.com</a>&gt;<br></div><br><br><div dir=3D"ltr"><div><br></div><=
div>Hi everyone,</div><div><br></div><div>I am transmitting a OFDM modulate=
d random signal padded with zeros which is generated from the Matlab. I am =
transmitting this signal using USRP X310. But I am receiving the continuous=
 random signal with the various delays in the first burst. This delay in re=
ceiving the signal is varying randomly with should certainly not happen whe=
n the parameters are constant. <br></div><div><br></div><div>In my project =
I am using a 20cm MIMO Cable to connect TX and RX. Can you please tell how =
I am receive signal with a constant delay at receiver.</div><div><br></div>=
<div>Regards,</div><div>Sneha<br></div></div>
</div></div>

--0000000000009d54d4058f9bc640--


--===============7131157154577653791==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7131157154577653791==--

