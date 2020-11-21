Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CE122BBE8C
	for <lists+usrp-users@lfdr.de>; Sat, 21 Nov 2020 11:55:05 +0100 (CET)
Received: from [::1] (port=56334 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kgQXk-0004HS-28; Sat, 21 Nov 2020 05:55:00 -0500
Received: from mail-wr1-f65.google.com ([209.85.221.65]:35237)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <dario@iptronix.com>) id 1kgQXf-0004Dq-PL
 for usrp-users@lists.ettus.com; Sat, 21 Nov 2020 05:54:55 -0500
Received: by mail-wr1-f65.google.com with SMTP id k2so13543353wrx.2
 for <usrp-users@lists.ettus.com>; Sat, 21 Nov 2020 02:54:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=iptronix-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=16oxWeaK/5KZalhtUXcWNY90Q94SJdjfaQRRk5ppJXE=;
 b=gmiMw5SLiClhs2KRUYOBq/Gbku2xvOEoZCJzbD+9TL00Xra2JXqmcHwNmJ0A6arOa0
 psbPgtzrUf1TbjvoX1qg53DSFLxU9kZPj2+Cj7uNRSWCo7By0+hkXkyrK2c4e1ZsAS6v
 ybMsgRUiDr083g3PDYRqVKcEgfOLM6JSSCvFKS9AskCqy7axxVQY7tff1LWOMH/Dg2bY
 55ZLPtZ4oZcKC5nqGFpjCwIjsDzwzATPwJWh0A+eWs2zDqcV8QXMIja7k/i4Doj7Gvzp
 nQkspIfqlMDh/PAWIag36Wm0N47HHKxIG0Rd48wIumHvyCp/AIGEh7GcRqba6MPHHV9K
 uJgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=16oxWeaK/5KZalhtUXcWNY90Q94SJdjfaQRRk5ppJXE=;
 b=kt31HtpgD24acKhy18YApF8ylPk3RftgMj2xxFPZhzpn8iewTgqS9rRAK7jb/xvzW/
 gyexq4SqvFznqPCdOn1NkGImMAW5nydpqizpgS8K4ST6Ug3DPI9YXecbYIzwEw/BTuTl
 knoJH2YgoI6DdpSa2iWTlV+C5Va/GD3gRunGImHpJcDhPKW/C9Ggn495x718fjY4CvK3
 VVBSlpptijcqtpWdHeihSldjq/Q0aNF3q/7dolnkVn9qXKiKoq/PifOwnltbkWCBqxmn
 hwt+NNwXS7VhFM8UYLmsASYKa2asjPq9HP7b9w8ZL2L3fCoRSW2CVnWjCTR+8HyYninR
 wJaA==
X-Gm-Message-State: AOAM530XrWtRqs0jgULL82hlFmojB3XK6aLaAcDhmlFXY7gM2yH0WURs
 j1CP9NdABV/NB5pxLqofsyPgSMwoclZSc9dR8EGFkCsD+b0f7CJp6TYrUg==
X-Google-Smtp-Source: ABdhPJxtaF+9ffmFwD2urtbPO3H3kF1HIiu1Xtgfsy4CU4Dnw+E5ubawKI1Gt8PTCkbJjRPOLxNPqz+UAyRSkBmea8o=
X-Received: by 2002:a5d:488b:: with SMTP id g11mr22330287wrq.210.1605956054152; 
 Sat, 21 Nov 2020 02:54:14 -0800 (PST)
MIME-Version: 1.0
Date: Sat, 21 Nov 2020 11:54:03 +0100
Message-ID: <CAKHaR3=cWOn8QPbVSU=h040NaquMntJoMgs2j1zXexcQmLDNpA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] simulation error with uhd 4.0
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
From: Dario Pennisi via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Dario Pennisi <dario@iptronix.com>
Content-Type: multipart/mixed; boundary="===============6762762669855315749=="
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

--===============6762762669855315749==
Content-Type: multipart/alternative; boundary="0000000000002209d705b49bc8c6"

--0000000000002209d705b49bc8c6
Content-Type: text/plain; charset="UTF-8"

Hi,
i'm trying to simulate a block where i'm using cmul. in order to have that
compiled in i am including the following in my Makefile under rfnoc/fpga in
my OOT directory:

include $(BASE_DIR)/../lib/ip/Makefile.inc
SIM_SRCS = $(abspath rfnoc_block_demod_tb.sv)  \
$(LIB_IP_COMPLEX_MULTIPLIER_OUTS) \

i tried also adding this to DESIGN_SRCS but when running simulation with
Vivado 2019.1 i see the following error:

ERROR: [XSIM 43-3983] Internal Compiler error encountered while processing
aggregate association.
ERROR: [XSIM 43-3915] Encountered a fatal error. Cannot continue.
Exiting...

if i remove cmul instance from my design simulation works.

can you please shed some light on how to fix this?
thanks,

Dario Pennisi

--0000000000002209d705b49bc8c6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div>i&#39;m trying to simulate a block wher=
e i&#39;m using cmul. in order to have that compiled in i am including the =
following in my Makefile under rfnoc/fpga in my OOT directory:</div><div><b=
r></div><div>include $(BASE_DIR)/../lib/ip/Makefile.inc</div><div>SIM_SRCS =
=3D $(abspath <a href=3D"http://rfnoc_block_demod_tb.sv">rfnoc_block_demod_=
tb.sv</a>) =C2=A0\<br>$(LIB_IP_COMPLEX_MULTIPLIER_OUTS) \</div><div><br></d=
iv><div>i tried also adding this to DESIGN_SRCS but when running simulation=
 with Vivado 2019.1 i see the following error:</div><div><br></div><div>ERR=
OR: [XSIM 43-3983] Internal Compiler error encountered while processing agg=
regate association.<br>ERROR: [XSIM 43-3915] Encountered a fatal error. Can=
not continue. Exiting... <br></div><div><br></div><div>if i remove cmul ins=
tance from my design simulation works.</div><div><br></div><div>can you ple=
ase shed some light on how to fix this?</div><div>thanks,</div><div><br></d=
iv><div>Dario Pennisi<br></div></div>

--0000000000002209d705b49bc8c6--


--===============6762762669855315749==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6762762669855315749==--

