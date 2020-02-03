Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 420F515052A
	for <lists+usrp-users@lfdr.de>; Mon,  3 Feb 2020 12:21:26 +0100 (CET)
Received: from [::1] (port=40684 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iyZnB-0002Cj-33; Mon, 03 Feb 2020 06:21:25 -0500
Received: from mail-wm1-f44.google.com ([209.85.128.44]:36717)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <marcus.mueller@ettus.com>)
 id 1iyZn7-00025x-NO
 for usrp-users@lists.ettus.com; Mon, 03 Feb 2020 06:21:21 -0500
Received: by mail-wm1-f44.google.com with SMTP id p17so16503839wma.1
 for <usrp-users@lists.ettus.com>; Mon, 03 Feb 2020 03:21:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:date:in-reply-to:references:organization
 :user-agent:mime-version:content-transfer-encoding;
 bh=snhKx8UrHjmsuQLVr6Dtj0cyrGuC6H8SzKn4h1YZsWE=;
 b=fAUdBCD7WkbfiCEDYPuwHRwxX0b+CtYuidx33CZTfS8QUNYGyKo1R7qDapFP2+gOEw
 i1pm3HNlLQ8zo74nUI+ayimzo8wYZwe9uRvpgzY2Jd2im/ZnWNvu+8vTK1CwshvyTDOk
 WtcA2vlCNLLU8yzQ4DoU4gEwIkumaQLgag7boP5PiUUtPYFlF7CZDoSqqDSfk1gFicfo
 w8ZxJ+njpU90aPkSFgfxw41R4ivznDETxsPvm40f4QTMs2nEByJcwwljuPKOrpgYOQuL
 CLwgO1rG9ugP6d94ReoCJxz3XWz4c1gUsfyYcPW5mJ2H3WWLo95dcAJa2urksASIKjSy
 VJvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=snhKx8UrHjmsuQLVr6Dtj0cyrGuC6H8SzKn4h1YZsWE=;
 b=YVNkYr/UoLjIXn2NsPxoJgzOTvxJ2T1uYOx5tFqujFwvy5ey/0f75a/4I3HyxaaqAH
 87qz5yhiCiC/qAacyGXDCtu3TeRoklcQIR4lI70paeOH3iAn4sQDlkdW63USxaAVyFmv
 HxBHntKeRaqdyAxDsB5lkK6l0dZxirJvrZykp/r1+8CIr8FbOp4XMjKOGK8NHpiLRMsw
 bOkBfVoakzXqv/0WI/M3dnrC1q85t+JfQ779lLuervytLaXpxeLYkm1UQqLNmCM0dFQt
 ZHp9Nb+AV3HJcoxIgSLN2cevs6ElhyVa8WPZgfBCxaLiTnYeJdKexI7VXymEH8RgMRbO
 WB5Q==
X-Gm-Message-State: APjAAAXZQjFPqHChvf/uSdAzpfgFDA62gFVMvfy48/iA/hOrQnv2dx1C
 7aYe36eLJn7oCognW+1Hx6mbS7f506RjhA==
X-Google-Smtp-Source: APXvYqwp4MjSPpG3ZANIBm2OsvIIXETp+jgYEXMUHi5R/9RuMYaZR76VnyW8gK7MNph/vPzfkZb74w==
X-Received: by 2002:a05:600c:2c0b:: with SMTP id
 q11mr27870872wmg.2.1580728840686; 
 Mon, 03 Feb 2020 03:20:40 -0800 (PST)
Received: from 212-166-45-208.win.be (212-166-45-208.win.be. [212.166.45.208])
 by smtp.gmail.com with ESMTPSA id
 y20sm23683919wmj.23.2020.02.03.03.20.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 03 Feb 2020 03:20:40 -0800 (PST)
Message-ID: <3c5972f65acf079e9d16fbbfd39a169f79979d32.camel@ettus.com>
To: Olivier Ravard <olivier.ravard@novagrid.com>, Neel Pandeya via
 USRP-users <usrp-users@lists.ettus.com>
Date: Mon, 03 Feb 2020 12:20:39 +0100
In-Reply-To: <4964800f-842c-e3f0-4969-3e48b93b0975@novagrid.com>
References: <4964800f-842c-e3f0-4969-3e48b93b0975@novagrid.com>
Organization: Ettus Research
User-Agent: Evolution 3.32.5 (3.32.5-1.fc30) 
MIME-Version: 1.0
Subject: Re: [USRP-users] X300 connecting 10Gb/s using baseT
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
From: =?utf-8?q?Marcus_M=C3=BCller_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: Marcus =?ISO-8859-1?Q?M=FCller?= <marcus.mueller@ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
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

Hi Olivier,

all this is basically standard Ethernet, so it *should* work.
Do the link indicator LEDs on the USRP blink?

Best regards,
Marcus
On Mon, 2020-02-03 at 12:14 +0100, Olivier Ravard via USRP-users wrote:
> Hello,
> 
> Is it possible to connect a X300 device to a 10Gb/s BaseT network
> using the SFP+ to RJ45
> adaptator ?
> 
> I do this test but I am unablme to ping the device (using
> 192.168.40.2 ip on port 1)
> 
> regards,
> 
> Olivier
> 
> 
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
