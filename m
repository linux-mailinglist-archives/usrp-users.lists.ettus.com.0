Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D585223E05D
	for <lists+usrp-users@lfdr.de>; Thu,  6 Aug 2020 20:32:14 +0200 (CEST)
Received: from [::1] (port=53744 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k3kgX-0003DA-Ti; Thu, 06 Aug 2020 14:32:13 -0400
Received: from mail-ed1-f52.google.com ([209.85.208.52]:35442)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <bpadalino@gmail.com>) id 1k3kgT-0002zM-AJ
 for USRP-users@lists.ettus.com; Thu, 06 Aug 2020 14:32:09 -0400
Received: by mail-ed1-f52.google.com with SMTP id m20so26373073eds.2
 for <USRP-users@lists.ettus.com>; Thu, 06 Aug 2020 11:31:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qbb/YuC3UNzpKU6ijcowkKin2UOYiBX2merc1Q3DK1o=;
 b=TLULhLI6oVY+5CyC23WDuDpwZaDeMmzGAlLGDwvGmuX0I1H7vg31lASRNRGl/jbgIi
 0DeF5gOeGGOYYV6bTjjNE2Tud0rRv4NnXeR6eEx+DJK4XCfcotf/8OKQ8OeWceKHCI2a
 hYfx2XsXLPH28oz52Exq/HvAaPMRrX0N5nGT9B7tNKSVzUv7xg166HGghTqlJV0WDgqT
 hVey0y/W8aggDqGjWiMK0+l49ls/K6z6NYF1FzRRfQugJpcIrUWHR1kxNaJZfLbi4WLp
 MMZJB852T87PuRl2Nag28DbrIGYIC5tE1ViVeggs0S27fAX7fTFYPDpLD8kF92sOUvER
 iDrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qbb/YuC3UNzpKU6ijcowkKin2UOYiBX2merc1Q3DK1o=;
 b=fTUpiTcpRTP8Ht5VjVQlRmEnpsWpopE/F9F1LhrPFnZ82WVnBl8RNDNJX4PjuppGC0
 KQQEPgOqg07LV2orlihF75ndljq8IBEbZTcuKkwDG9GWEfNy5KMqLwwHZiqa0CKMFxIe
 ft9KM/Aux9pgEGCON+Zhly6urHGYi/jFIJ+JOAZq7Fq+fLX2dCMhAq3UflVmUlUKp1+7
 mkr9ttkAfaxdfrqmRTAjilBVHe0Fh05KDIU4UDXXcedvQ7AYn8EP6mEw/TMX9c9HwML+
 nmDIrJtMBDciO0P0DK54Onleodrg6CEAddumuAunl31r1uDOjeImTg93gucYG63lDPhz
 BNpw==
X-Gm-Message-State: AOAM530QbXjZuDGw0bAqisOJMHpynUaVVHdOE6Qq6OuuJDNq+UP5ccOK
 a/gjv8MZEn/sX4RyHu3thJtpmGTuus48XpK5miceLlmA
X-Google-Smtp-Source: ABdhPJz0F8asnWyz0+FJKqz4Lxy7CTRybSlUcbu04Izm0RrnnEwqZnwB/uROAOkn91mN5+urJPzG7QOD2UaRMh1J8Vk=
X-Received: by 2002:a50:cf46:: with SMTP id d6mr5287620edk.339.1596738688258; 
 Thu, 06 Aug 2020 11:31:28 -0700 (PDT)
MIME-Version: 1.0
References: <MW3PR19MB42683E64A27B9B0C0A3D0683C6480@MW3PR19MB4268.namprd19.prod.outlook.com>
 <CA9262F8-E745-4A74-934E-557490486CD4@gmail.com>
 <MW3PR19MB42688D343319432B7156AE09C6480@MW3PR19MB4268.namprd19.prod.outlook.com>
 <CAEXYVK5y-7cf9Y1uCpU3CpQ8KKuueu3eq28SvtfErvgXu-+X+Q@mail.gmail.com>
 <MW3PR19MB426868CA935E2B6360B879C3C6480@MW3PR19MB4268.namprd19.prod.outlook.com>
In-Reply-To: <MW3PR19MB426868CA935E2B6360B879C3C6480@MW3PR19MB4268.namprd19.prod.outlook.com>
Date: Thu, 6 Aug 2020 14:31:16 -0400
Message-ID: <CAEXYVK41auGzwJpMGWa43pwaa6xX4uy+9A+LT7SQ4-PVNgFnuA@mail.gmail.com>
To: Jerrid Plymale <jerrid.plymale@canyon-us.com>
Subject: Re: [USRP-users] Signal transmission on a USRP X310
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
From: Brian Padalino via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Brian Padalino <bpadalino@gmail.com>
Cc: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5149125679978874432=="
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

--===============5149125679978874432==
Content-Type: multipart/alternative; boundary="00000000000050161705ac39b227"

--00000000000050161705ac39b227
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 6, 2020 at 2:28 PM Jerrid Plymale <jerrid.plymale@canyon-us.com=
>
wrote:

> I am seeing a signal strength between -65 and -70 dBm, approximately, eve=
n
> when transmitting all 0=E2=80=99s.
>

If you really can't handle any LO leakage, can you switch off-frequency
between times you want to transmit?

Brian

>

--00000000000050161705ac39b227
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"></div><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Thu, Aug 6, 2020 at 2:28 PM Jerrid Plymale=
 &lt;<a href=3D"mailto:jerrid.plymale@canyon-us.com">jerrid.plymale@canyon-=
us.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_1151575966745623661WordSection1">
<p class=3D"MsoNormal">I am seeing a signal strength between -65 and -70 dB=
m, approximately, even when transmitting all 0=E2=80=99s.</p></div></div></=
blockquote><div><br></div><div>If you really can&#39;t handle any LO leakag=
e, can you switch off-frequency between times you want to transmit?</div><d=
iv><br></div><div>Brian</div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex"><div lang=3D"EN-US"><div class=3D"gmail-m_1151575966745623661WordSectio=
n1"><div><div><div>
</div>
</div>
</div>
</div>
</div>

</blockquote></div></div>

--00000000000050161705ac39b227--


--===============5149125679978874432==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5149125679978874432==--

