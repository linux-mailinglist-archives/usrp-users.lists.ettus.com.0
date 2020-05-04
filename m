Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 401C81C4870
	for <lists+usrp-users@lfdr.de>; Mon,  4 May 2020 22:39:20 +0200 (CEST)
Received: from [::1] (port=54996 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jVhrx-0007MY-2a; Mon, 04 May 2020 16:39:17 -0400
Received: from mail-ot1-f41.google.com ([209.85.210.41]:33326)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1jVhrs-0007H5-Op
 for usrp-users@lists.ettus.com; Mon, 04 May 2020 16:39:12 -0400
Received: by mail-ot1-f41.google.com with SMTP id j26so10203529ots.0
 for <usrp-users@lists.ettus.com>; Mon, 04 May 2020 13:38:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xWsqZ+id51tn3lt78/5JkPLpa/LnRS/nsDX+6nM4oWk=;
 b=CxsZgn9ZHFR+LYKBa2pF4CmfVgHiI8eHYuSvYsRH61q20n6nJJZ/2RuwJleZ5lkaPF
 S+UPAgCTqUmIoSsVngeTDKXJu7nurCbw41PmSrI2OlK2xMKXtJepPRfD2EBajqlSo31v
 V3547nBbZ8FLfjUl8zR26sofn2SIEjfqLufaO0IA1evGEveVi1NgNFn2ttidUrMHwjtT
 0/r+b+z3V1iPGKlNJod2FVzFj64NBW3kiwZT+jDWuCAk07MSt5/3EdHb2BTjsQCp7aCv
 AjeAYRv//SEKUmXYMLRa1UEXT93Aw7SiqE64YPI89PXnR7YSXSi9M66P1JzRdUEcrTZ6
 wznQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xWsqZ+id51tn3lt78/5JkPLpa/LnRS/nsDX+6nM4oWk=;
 b=CinLzZJCCUhcglNB2IPwStCjC99UQKQsGYWSeJDSwf55lfmYiIapRPQiBvoT1Jv7Fo
 ToYGxLdz58saDcRySsLiTLkXluCuRYEf0uBYplVkm5Ux+73112+n2Sw/Jkwlri9WnZWH
 otAPR1eNSwjtNC6RCwPbNl4ghXohJR2org1Pv8toeoKDqq6/X2dMN6GcE4p8oJRwbcmO
 HMi2EtbMwBx5rLGov+g3+OJYzUKvJMt9FL1B71WbrSIq5zA8zkwwKgXwHJ8q5f9kEURg
 Nx4C6qNZwlr4nIMnVPQzMcm/Dn9iB15O6QdF1+RB2PlyWElbYnPKEKTfYLsgidBoH/Ds
 s9xg==
X-Gm-Message-State: AGi0PuaGACOBFqm6PqYATv7rfNLZBlWxmWdmrYuoHHjDOF22le83LkMM
 AQWZijHcUR5awyJUQqux8vri3swqBrnqHoKSoiKTUg==
X-Google-Smtp-Source: APiQypKAGeodnRJmG9Wsi+uepEE992Rm+0ZIrcjnHZTGQ2tcsxdutLLNVEbIKxSHJ67BUWJbweCzzjGcfJKrSkDSV8I=
X-Received: by 2002:a05:6830:4db:: with SMTP id
 s27mr8240310otd.301.1588624711914; 
 Mon, 04 May 2020 13:38:31 -0700 (PDT)
MIME-Version: 1.0
References: <CAPRRyxtCj6iQymGZ9zNbGWxBjybOC=6GN7=OzpA2HvkiiYTbzg@mail.gmail.com>
In-Reply-To: <CAPRRyxtCj6iQymGZ9zNbGWxBjybOC=6GN7=OzpA2HvkiiYTbzg@mail.gmail.com>
Date: Mon, 4 May 2020 16:38:21 -0400
Message-ID: <CAB__hTQt5Yaw3xYKAiw+eRRH62g_s=tDVMgQtwNcng_jW7EnSw@mail.gmail.com>
To: Ivan Zahartchuk <adray0001@gmail.com>
Subject: Re: [USRP-users] How to set channel B reception with rfnoc USRP
 E310?
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Cc: usrp-users <usrp-users@lists.ettus.com>,
 discuss-gnuradio <discuss-gnuradio@gnu.org>
Content-Type: multipart/mixed; boundary="===============8584193271368555640=="
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

--===============8584193271368555640==
Content-Type: multipart/alternative; boundary="000000000000a2dd9f05a4d8830b"

--000000000000a2dd9f05a4d8830b
Content-Type: text/plain; charset="UTF-8"

Does the 2nd argument to set_rx_antenna() indicate which radio port?  If
so, try setting it to 1.
Rob

On Mon, May 4, 2020 at 2:02 PM Ivan Zahartchuk via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello, I'm trying to switch between all four USRP E310 inputs. For this, I
> use the command self.uhd_rfnoc_streamer_radio_0.set_rx_antenna ("TX / RX",
> 0) but I can only switch in channel A. RFNoC Radio does not have the
> set_rx_subdev_spec command. Tell me how can I switch across all 4 channels?
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000a2dd9f05a4d8830b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Does the 2nd argument to set_rx_antenna() indicate which r=
adio port?=C2=A0 If so, try setting it to 1.<div>Rob</div></div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, May 4, 20=
20 at 2:02 PM Ivan Zahartchuk via USRP-users &lt;<a href=3D"mailto:usrp-use=
rs@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hello, I&#39=
;m trying to switch between all four USRP E310 inputs. For this, I use the =
command self.uhd_rfnoc_streamer_radio_0.set_rx_antenna (&quot;TX / RX&quot;=
, 0) but I can only switch in channel A. RFNoC Radio does not have the set_=
rx_subdev_spec command. Tell me how can I switch across all 4 channels?</di=
v>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000a2dd9f05a4d8830b--


--===============8584193271368555640==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8584193271368555640==--

