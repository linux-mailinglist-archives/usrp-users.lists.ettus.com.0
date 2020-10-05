Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 293A2282F2A
	for <lists+usrp-users@lfdr.de>; Mon,  5 Oct 2020 05:53:18 +0200 (CEST)
Received: from [::1] (port=36012 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kPHYn-0006qw-VL; Sun, 04 Oct 2020 23:53:13 -0400
Received: from mail-oi1-f173.google.com ([209.85.167.173]:40917)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <lucky.cimon@gmail.com>)
 id 1kPHYk-0006mm-LF
 for usrp-users@lists.ettus.com; Sun, 04 Oct 2020 23:53:10 -0400
Received: by mail-oi1-f173.google.com with SMTP id m128so7497520oig.7
 for <usrp-users@lists.ettus.com>; Sun, 04 Oct 2020 20:52:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=gBLdNHznV6BBehZfY0jOOisdCfV5fZZyloPocGN2VVQ=;
 b=q4H7bCxXxxOBwpHjfCF9IjJZum8aP0q7vkC3o8xS7PHFeHdcpR5jafm/e4HAIjLVVC
 xLOhigdMnD+p6PKkAnMBqd3ev0o4oQ1wX5kHkvT82SJHbL9h/lgFNPeR6b8i7rMFSlXs
 kk9MHsH235pV45m1dixVYl6/i8kiTexroMajc5rf77J+ZhBqFtnWheC/ZQbWk1rSlkCr
 GGqMJZYxliSOqAA0Ngx3i9EtD3A8jtATBw7S60RnlNyDkCJAm8VdYws454HiV9dbQX53
 K0RKZ2/NYovWyw/tLwVStqgfl9KrQ08sKZ+2pc0oOjl245+t/C1lcQgczzRrwq2S8Vd+
 gj3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=gBLdNHznV6BBehZfY0jOOisdCfV5fZZyloPocGN2VVQ=;
 b=Ak+wVUiJqKHhi1SAlpqI8hcb86MR2vAHb3ww/4AHXS0lmtpplIIZg2ijBD7pHxIKq+
 kElynZxtUlE6FcO5SQEtZPk8PTegZidJxGI/BzjfcfQU1g2jzwBCsJYaBgqaEkZrQLY3
 bN2iMdyPuXsn+HA6v65cp0CbtNkJVrVXklRy1dDqX5ujI+hGy7koA6aFQO/8TQPkYu8C
 gd7H2VV/45YcJw4E9VEBBaSa2bE1QRHF5vCoeHv22kWUMh5dHg7ou3KTOwuf+AOsMOIS
 qK3V9FyWtMGtJFYwT1GhxelUcoLt8Cu2xyVjc4r7cKPyiWt53SFU3Q5baFW1uObx5TK5
 bapA==
X-Gm-Message-State: AOAM531z0Ej0JqtyGwdj7/2EbT2eT4Z4mrdD8sIx8RpBRUc1gw4ktdVS
 WVME/NVxw5YFTkPZZj+ZvDeEXDrRLjiTi4OCoLwG42BKz+I=
X-Google-Smtp-Source: ABdhPJzsRsk0nm/kpFQNxTBzgKV95heUtuKylLJtM0Yb50bjLbCbLR2jeyiQoUP0QOSFAqNQrLcGSqAdK7OU6lukVIE=
X-Received: by 2002:aca:170a:: with SMTP id j10mr2741250oii.82.1601869949515; 
 Sun, 04 Oct 2020 20:52:29 -0700 (PDT)
MIME-Version: 1.0
References: <CADj+HFUokUDfvvTQaYcUZoOMFWY9Pb3UmKBXWmkYz1JyYJBpNA@mail.gmail.com>
In-Reply-To: <CADj+HFUokUDfvvTQaYcUZoOMFWY9Pb3UmKBXWmkYz1JyYJBpNA@mail.gmail.com>
Date: Sun, 4 Oct 2020 20:51:52 -0700
Message-ID: <CADj+HFWY0SQJZaRPMuLw8nk1SgnjBO48sgSXc4+5R5-YnwCH4w@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Configuring B210 with OpenAirInterface for connecting
 it to a commercial cellular network
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
From: SungWon Chung via USRP-users <usrp-users@lists.ettus.com>
Reply-To: SungWon Chung <lucky.cimon@gmail.com>
Content-Type: multipart/mixed; boundary="===============7506972728617961558=="
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

--===============7506972728617961558==
Content-Type: multipart/alternative; boundary="000000000000513d4705b0e4693f"

--000000000000513d4705b0e4693f
Content-Type: text/plain; charset="UTF-8"

 Hi,

I wonder if anyone used Ettus SDR (e.g., B210) for AT&T (or Verizon) 4G/5G
network demo? For instance, sending and receiving a text message between
B210 and Android mobile phone. To do this, B210 may need to be programmed
with a SIM card info.  I have a SIM card for AT&T device but I couldn't
figure out how this can be set up with B210 and OpenAirInterface.  Would
this configuration require some information available under a
non-disclosure agreement with a cellular carrier vendor?

I wonder what are the key information and procedures for connecting Ettus
SDR (programmed with OpenAirInterface) to a commercial cellular network.
If you did a similar demo or know a related open source project (either
with OpenAirInterface or with Open5GS), any pointers would be greatly
appreciated.

Thanks
SC

--000000000000513d4705b0e4693f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr">
<div><span><span>Hi,</span></span></div><div><span><span><br></span></span>=
</div><div><span><span>I wonder if anyone used Ettus SDR (e.g., B210) for=
=20
AT&amp;T (or Verizon) 4G/5G network demo?  For instance, sending and receiv=
ing a text message between B210 and Android mobile phone.  To do this, B210=
 may need to be=20
programmed with a SIM card info.=C2=A0 I have a SIM card for AT&amp;T devic=
e but I couldn&#39;t figure out how this can=20
be set up with B210 and OpenAirInterface.<span><span>=C2=A0 W</span></span>=
ould this configuration require some information available under a non-disc=
losure agreement with a cellular carrier vendor?=C2=A0 <br></span></span></=
div><div><span><span><br></span></span></div><div><span><span>I wonder what=
 are the key information and procedures for connecting Ettus SDR (programme=
d with OpenAirInterface) to a commercial cellular network.=C2=A0 If you did=
 a similar demo or know a related open source project (either with OpenAirI=
nterface or with Open5GS), any pointers would be greatly appreciated.=C2=A0=
 </span></span><br></div><div><br></div><div>Thanks</div>SC</div>
</div></div>

--000000000000513d4705b0e4693f--


--===============7506972728617961558==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7506972728617961558==--

