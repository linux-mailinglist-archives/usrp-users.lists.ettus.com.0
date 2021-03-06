Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6185232FC8E
	for <lists+usrp-users@lfdr.de>; Sat,  6 Mar 2021 20:11:06 +0100 (CET)
Received: from [::1] (port=59172 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lIcKI-0004fW-Ac; Sat, 06 Mar 2021 14:10:58 -0500
Received: from mail-wm1-f51.google.com ([209.85.128.51]:55419)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <marcus.mueller@ettus.com>)
 id 1lIcKF-0004WJ-5h
 for usrp-users@lists.ettus.com; Sat, 06 Mar 2021 14:10:55 -0500
Received: by mail-wm1-f51.google.com with SMTP id w7so3679614wmb.5
 for <usrp-users@lists.ettus.com>; Sat, 06 Mar 2021 11:10:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=lL2uS7nxBRRrWv5ZlZL3KaVhRVKl6sPvPNKSjIs7PmU=;
 b=iCn3J0d/COg/Ox73BXlhIbmCBFtN7qIGCHjX7FZ+TMxAlmCQHU98djju0DWJI7XRIF
 18q02RZPBlZVu50yyU3xm8CweXljmeULEzNULJ843z/fqpSqkp5RgpmUIpaLXx3lO1/J
 4ETyYTtDXuBdbl1l9dwfqLXZb3BCjL8hw+0LFdpwNG/o4Xd1b1ENBTYAN4fpi27Fs/Fz
 nw8NWSO6MBVc9OG2EfX2fshX6a6pXAloDA/izyr3EZ9MJoz0be0BsbWWa46Sxll9Nzkd
 KkCV00GoFNXGwmHb44NCjeQd2dF1+MkvSrSQajJgF23o/6kmgCoTtaFfHfdOB9Jht3+z
 eVoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=lL2uS7nxBRRrWv5ZlZL3KaVhRVKl6sPvPNKSjIs7PmU=;
 b=DvZMVtZerqbNZ0txay9CLAMxoPmcog1qzKUldGRF5J97MiwO25vUZr02Rfwhy6oMgX
 bjbbY4TKaVmQRgO92pnjAjdAz2nbVvdphnvHxsuFxL0HtHbeX0kkDJOLoW+E2dYuWJZW
 DvsWsxCbMAyjnzulnuXPfsQkOgzpCg2MfoFkmc0sPJbxzA/M7P124g59qt0kqaygenJk
 cndTXW3r0xu+fKlyvXLjmNA4lSpGhQi8hQzAPY+EhLeAQREVTvA7SxssMNdbqj5OgoMG
 x1r9jki51rk8nCl3s9iCxJBH5cmRETakE8Xsx2Hv+z5qIhrMsFOo5E/t1FLTxY4xynbP
 wn7Q==
X-Gm-Message-State: AOAM5305sG7gJQoyzLGr2GLXe6mOSJtG2CSDlHsziqffSrP+Vg3J81PU
 m6ktPhuYtsM+4DfBMjfKTvEJqEtFRcSyxuKLovg=
X-Google-Smtp-Source: ABdhPJxt7CY1O88kJlKnai+E9+wIxuqF1FP+KVzlIY6Bh2P9XhxQ0zEw1OuhGa95NkbtoT5eZiPRqA==
X-Received: by 2002:a1c:7c14:: with SMTP id x20mr13953663wmc.17.1615057813976; 
 Sat, 06 Mar 2021 11:10:13 -0800 (PST)
Received: from [192.168.128.8]
 (HSI-KBW-46-223-162-176.hsi.kabel-badenwuerttemberg.de. [46.223.162.176])
 by smtp.gmail.com with ESMTPSA id k4sm12272151wrd.9.2021.03.06.11.10.13
 for <usrp-users@lists.ettus.com>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 06 Mar 2021 11:10:13 -0800 (PST)
To: usrp-users@lists.ettus.com
References: <SN6PR1901MB4688DACB2A5FEFC8E433A70BA4979@SN6PR1901MB4688.namprd19.prod.outlook.com>
Message-ID: <dc67f99e-d640-9acf-07dc-e0a6a1684862@ettus.com>
Date: Sat, 6 Mar 2021 20:10:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <SN6PR1901MB4688DACB2A5FEFC8E433A70BA4979@SN6PR1901MB4688.namprd19.prod.outlook.com>
Content-Language: en-US
Subject: Re: [USRP-users] Current Recommended UHD RFNoC Versions?
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
From: =?utf-8?q?Marcus_M=C3=BCller_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
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

Hi Jeff,


GNU Radio 3.7 is legacy; you want to use GNU Radio 3.8 or 3.9.

gr-ettus is only fully compatible with GNU Radio 3.8, and much better suppo=
rted under
that. That settles that. Use GNU Radio 3.8! (GNU Radio 3.7 really slows you=
 down at this
point: Python2, all kinds of legacy Qt problems,...)


Regarding UHD: a recent 3.something or LTS is probably what you'd want to u=
se if the RFNoC
you're used to is your current time investment.


Best regards,

Marcus



On 04.03.21 22:08, Jeff S via USRP-users wrote:
> I'm getting ready to help someone install code and I'm seeing conflicting=
 things
> regarding GNURadio v3.7/v3.8 with respect to wanting to do RFNoC developm=
ent.=A0 They are
> going to use an N310 and I've been using maint-3.7 for quite a while.
>
> Are we still using the rfnoc-devel branches of UHD and FPGA, maint-3.7 of=
 GNURadio, and
> master for gr-ettus?=A0 Or is there some later, stable recommendations?
>
> Sorry if there was any recent related posts, but I didn't find any.
>
> Thanks,
> Jeff
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
