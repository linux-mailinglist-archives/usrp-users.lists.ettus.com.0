Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A3780B808E
	for <lists+usrp-users@lfdr.de>; Thu, 19 Sep 2019 20:05:27 +0200 (CEST)
Received: from [::1] (port=56380 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iB0nz-0003wf-7L; Thu, 19 Sep 2019 14:05:23 -0400
Received: from mail-oi1-f178.google.com ([209.85.167.178]:35400)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <bpadalino@gmail.com>) id 1iB0nv-0003o6-Gu
 for usrp-users@lists.ettus.com; Thu, 19 Sep 2019 14:05:19 -0400
Received: by mail-oi1-f178.google.com with SMTP id x3so3561760oig.2
 for <usrp-users@lists.ettus.com>; Thu, 19 Sep 2019 11:04:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=955AOLGQ1Aww995XHHoRlnwmMGc2VQtax28aVkMb1FI=;
 b=l07ddU+4kH6pStxBRsiPD+KHB7sNKxt6zshAFs7BV+/Mm0w61Di6keVQMqyBIbUUE0
 VXMx1yNf4OK9sZNJGaNxKf4ibX7vZOnDWzWcapSt3RMxtZCRJtI2wcxEBp4Q6QOTy+Q+
 VBcSc/ul8BHSYQcC1nYQ5hN7eaiKe2jtwmGX+tGStcw5S3uoZ9E+pvYFocdis/Xw22eZ
 WJzPShL0dvxl+8JyC6HTtwavLqEwp11zvJfRnfTryFuMPx3Kbx3V5HRGgLZDC5jN7IdH
 icEN/8f/jA+Hu/IuTawoXx51M0idrbZ7MI8IADjvoTopJBVFZO30nZbVE6nz/3CdZ4aa
 1rvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=955AOLGQ1Aww995XHHoRlnwmMGc2VQtax28aVkMb1FI=;
 b=L6fYzgWvOjNwHAQ/gDt0TKn7dfvTBVP+136fypJ0NrzjrvgLOA2PF8Es4bs8CpVca8
 n9XsP9bGWzoPC3omekDn7nLOh6tfOlw8SUXPERprgcl7C0ulF0A3avs83RyBngPzkyE3
 518rSot+UBaJcXufBqIIlcArPDkJE9U3dAL6XgeiyptvrrpAbOrO5ZPtlvlmq/BSR95+
 8Jk8n1WZpK93pFGg4AJzUbgq04l4XhSCBaLrGf48rGjEngjICr35BvhG/86cQUmHr/PE
 nuZI0YVDGnt1uzfcPRrrmDlUxMwVEWWQ7Ekd2wPVGUNAqohvZd16wU9QfgoM7p/NeAl0
 YUlg==
X-Gm-Message-State: APjAAAW/wcu3vBnbsalTZ0L/qRDtdAnSYbC7IUwuzb6y3VZPdq0ienv8
 YHblGhJXS7P0l4OXJwfITWFfofq4MYvGwZukEWM=
X-Google-Smtp-Source: APXvYqyEyDvhTKMZXIvOk9beiaizJ6ymjEXAqreTf2/lPYdbETmdULv51Zgv4VfRgjNcB82KgYKElaT3C+Nyv7dp8EY=
X-Received: by 2002:aca:4705:: with SMTP id u5mr3113971oia.161.1568916278784; 
 Thu, 19 Sep 2019 11:04:38 -0700 (PDT)
MIME-Version: 1.0
References: <20abea6ebc2be30dac4b14046002f932.squirrel@webmail.tu-dortmund.de>
 <CAEXYVK4zeLHQ7MppY-Fg7bF4EsZxpeR6sY4h5YWQyuYid=4Fxg@mail.gmail.com>
 <126edb78970ab9e3b4dca87b426d5e32.squirrel@webmail.tu-dortmund.de>
In-Reply-To: <126edb78970ab9e3b4dca87b426d5e32.squirrel@webmail.tu-dortmund.de>
Date: Thu, 19 Sep 2019 14:04:27 -0400
Message-ID: <CAEXYVK7rYFNXQZdH8Oe=V6nWV2eLP-TiDee3phgkg2+JJ0e+Rg@mail.gmail.com>
To: felix.greiwe@tu-dortmund.de
Subject: Re: [USRP-users] RFNoC Crossbar and Block data rates
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
From: Brian Padalino via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Brian Padalino <bpadalino@gmail.com>
Cc: Usrp Liste <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1560774903351326438=="
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

--===============1560774903351326438==
Content-Type: multipart/alternative; boundary="0000000000007ab5f50592ebc944"

--0000000000007ab5f50592ebc944
Content-Type: text/plain; charset="UTF-8"

On Thu, Sep 19, 2019 at 11:18 AM Felix Greiwe <felix.greiwe@tu-dortmund.de>
wrote:

> Hi Brian,
>
> thank you for your help.
>
> I have on question left. You say the crossbar is non blocking. Does that
> mean it can supply multiply RFNoC Blocks with input data at once at its
> full bus_clk speed? Or does it switch between the ports so that some
> blocks have to wait until its their turn to get data?
>

AXI is a packetized system, but once a packet is ready, as long as there is
a 1:1 relationship between ingress and egress, then things should be full
rate across all ports.

Brian

--0000000000007ab5f50592ebc944
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Thu, Sep 19, 2019 at 11:18 AM Felix Gr=
eiwe &lt;<a href=3D"mailto:felix.greiwe@tu-dortmund.de">felix.greiwe@tu-dor=
tmund.de</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex">Hi Brian,<br>
<br>
thank you for your help.<br>
<br>
I have on question left. You say the crossbar is non blocking. Does that<br=
>
mean it can supply multiply RFNoC Blocks with input data at once at its<br>
full bus_clk speed? Or does it switch between the ports so that some<br>
blocks have to wait until its their turn to get data?<br></blockquote><div>=
<br></div><div>AXI is a packetized system, but once a packet is ready, as l=
ong as there is a 1:1 relationship between ingress and egress, then things =
should be full rate across all ports.</div><div><br></div><div>Brian</div><=
/div></div>

--0000000000007ab5f50592ebc944--


--===============1560774903351326438==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1560774903351326438==--

