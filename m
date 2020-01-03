Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 307DA12FCE9
	for <lists+usrp-users@lfdr.de>; Fri,  3 Jan 2020 20:17:24 +0100 (CET)
Received: from [::1] (port=59538 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1inSRl-0004NQ-JS; Fri, 03 Jan 2020 14:17:21 -0500
Received: from mail-wr1-f41.google.com ([209.85.221.41]:47071)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <marcus.mueller@ettus.com>)
 id 1inSRi-0004Id-Jb
 for usrp-users@lists.ettus.com; Fri, 03 Jan 2020 14:17:18 -0500
Received: by mail-wr1-f41.google.com with SMTP id z7so43292344wrl.13
 for <usrp-users@lists.ettus.com>; Fri, 03 Jan 2020 11:16:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:date:in-reply-to:references:user-agent
 :mime-version:content-transfer-encoding;
 bh=vQevn48x64ChSJpe1Z11ZKd+Z90EQ/gdgf2lqek3UEE=;
 b=dkNg5aR5RK5WYgY0OidVvdaH1TliICaQZW6/f6ZJucY4gHCUAqlxBEkaFQzxJa8h/S
 aqKicvX0zYt/DyiuxjtpjBjzlDTZYdfRadyuCbkXi385saEl2XAzeDaDhW/n1z2AvleS
 ONmbXJDUOVE0S//Cpg6xOU4Y9yBAdczSI/7WiY3AjQjJkJUvxak2WvuwHC0rsNkd7GNW
 9UY+BerxdnRfvc2q7EfxuoT2rHx2qs/RO/uqVeD//oc1yvqWoW4i/Q5qx2nI9oBpXHVh
 HLKFCXYMjDnu8uI//KSO6ahZNmgT4eBHvZGdsdWKsx4LOaWj+sXNotpYlmJ7+J+ih9+y
 THLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=vQevn48x64ChSJpe1Z11ZKd+Z90EQ/gdgf2lqek3UEE=;
 b=Jb2qbyfakLu5bXFSQF3j1jl2rRLgod8NXoZYoHEgEQAKl9o2MVtBIG8GaJzcLoxXbv
 eLSORwckuCzBiQeTy9EtdcEIHPDDOecxIUKUb96MmYZRu4VCBsq4L7AK8W227QeuEmtm
 u0TnU1BkvYgjgPaD71Nwak9ATnsDfLTY0Qtro3W0Yp8bvBOeufumZssl4PgBTw6q3OCJ
 cuMEr3bFZqBe7mmPB09o4HsMYKQy3zWPsfsh+Y9kFWt5G8eRw+2J2chVXM0H8MtUx9Uz
 ZbWjCG6BkpvKYyK1EF7yfOc0vHBr+H/4i28F6MqDHZt3brRzsTYXP9eamUdicJY6JjyT
 jbCA==
X-Gm-Message-State: APjAAAVivwbeSrERh96AZW2irtgvy6Oguplj9r2oG3c11bop+vdGXlV5
 A6CbniZ2hEsC2mvxVcvxeO5mpFNVuJTe4g==
X-Google-Smtp-Source: APXvYqzutxI8eegJ57qfnyoj3B2ef7BAE7Q31XOe8I4t5aoOnBMFo4jaGNpJEoSyskVh1JhInL647Q==
X-Received: by 2002:a5d:67c7:: with SMTP id n7mr57603013wrw.319.1578078997577; 
 Fri, 03 Jan 2020 11:16:37 -0800 (PST)
Received: from workhorse.lan
 (HSI-KBW-46-223-163-146.hsi.kabel-badenwuerttemberg.de. [46.223.163.146])
 by smtp.googlemail.com with ESMTPSA id q6sm65522889wrx.72.2020.01.03.11.16.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Jan 2020 11:16:36 -0800 (PST)
Message-ID: <0986444f6acfa153422d73f3f3787ea1d04ef1de.camel@ettus.com>
To: Jerrid Plymale <jerrid.plymale@canyon-us.com>, 
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Date: Fri, 03 Jan 2020 20:16:35 +0100
In-Reply-To: <MW2PR1901MB2137B5985ADB1D60955CA0E6C6230@MW2PR1901MB2137.namprd19.prod.outlook.com>
References: <MW2PR1901MB2137B5985ADB1D60955CA0E6C6230@MW2PR1901MB2137.namprd19.prod.outlook.com>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
Subject: Re: [USRP-users] IOError: [Errno 2] No such file or directory -
 uhd_image_builder_gui crashes when trying to run
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

Hi Jerrid, 

could you check /home/ck/rfnoc/src/uhd-fpga/usrp3/top/e300/Makefile
exists?
My uhd-fpga directory has that; I think yours *should*. Which version
of the uhd-fpga repo are you using?

Best regards,
Marcus

On Fri, 2020-01-03 at 15:43 +0000, Jerrid Plymale via USRP-users wrote:
> Hey All,
> 
> So I recently started having issues with the uhd_image_builder_gui
> after doing a fresh install of UHD and GNU Radio with RFNoC. Below is
> the output of the terminal when I try to run the gui. Anyone run into
> this issue and know how to fix it?
> 
> Traceback (most recent call last):
>   File "./uhd_image_builder_gui.py", line 656, in <module>
>     main()
>   File "./uhd_image_builder_gui.py", line 652, in main
>     _window = MainWindow()
>   File "./uhd_image_builder_gui.py", line 71, in __init__
>     self.init_gui()
>   File "./uhd_image_builder_gui.py", line 149, in init_gui
>     self.populate_target('e300')
>   File "./uhd_image_builder_gui.py", line 608, in populate_target
>     with open(build_targets) as fil:
> IOError: [Errno 2] No such file or directory:
> '/home/ck/rfnoc/src/uhd-
> fpga/usrp3/tools/scripts/../../top/e300/Makefile'
> 
> Best Regards,
> 
> Jerrid
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
