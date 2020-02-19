Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E9BC164871
	for <lists+usrp-users@lfdr.de>; Wed, 19 Feb 2020 16:25:12 +0100 (CET)
Received: from [::1] (port=42248 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j4RDo-00083z-GD; Wed, 19 Feb 2020 10:25:08 -0500
Received: from mail-lj1-f173.google.com ([209.85.208.173]:36458)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <luke.whittlesey@gmail.com>)
 id 1j4RDk-0007fW-P2
 for usrp-users@lists.ettus.com; Wed, 19 Feb 2020 10:25:04 -0500
Received: by mail-lj1-f173.google.com with SMTP id r19so801887ljg.3
 for <usrp-users@lists.ettus.com>; Wed, 19 Feb 2020 07:24:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=WyjSt9TlVsALGLUPOus2tL00oI3gzNwDrDWAlj4THTU=;
 b=D4RuuZBYMX0RVjdN1KdEq0hJJ00jNK9YVl6PuplWzlvqOg11XLM0YQL7L4dRD1dUIY
 aNjGi+wGuTnyZfFqBWtiRklUNKWMA4gC6Z71NSELMOg+14XuxLAv2fCbuZVVEmKRfFo5
 1MzzO2qXZKTa8yWNTOuKs61uK881w2ZerPiVF0ZU40H+6drs1VCnsG5gwFphEiZCyzfo
 J4oQ2uFytPEQbE1IRk7nMT96rMP8WS5s17RTPO/yNWm8MfSXyYOzni7DrEDV5hoeUteN
 BKEEUv8GREJ/LXa+MVQl6SczszQrZtAL/tHv2TaCyR4EIB3AnWoJ3IHNy5T61j3hwdqW
 tfjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=WyjSt9TlVsALGLUPOus2tL00oI3gzNwDrDWAlj4THTU=;
 b=bEsD/+JNcDHm8DvbSXCu5F7fcx8sw8yWhwRaF0gFA9QOWiX/zshdgsaRu2bR7OFaap
 WvLqsNK8e86nVDCNduNc8z6Qx0YcLihQAzdIxyKzirBiF0ZPOGD4aM+/b3Ue5sOnmSZi
 9WCvLdTKITGEm8DIUk7LUY/WMPLhxrwV4qVDnMfWdLQHpysIf9/t8pV+WxgcmDOjUH2a
 yw+y1kqc0++ggN+f2brT1PuFjWoGVamV1AN2hS6xEROaRLikYww/AqN+D8+xgKkHNwu/
 vSDd2LwTVFZ+lziqvK3PwIPOJ423971ANMU/3a/r0hCw7P8uTQuaT53TI3LEz6wesK3B
 PFlw==
X-Gm-Message-State: APjAAAXFbrfFp9C7gAxRWdET/pwAEQKFonnqyo0pitPyIXebAsTz1NrJ
 6ZgdUynI8gf1x6TLfXea4DiRWDBM8sBeLEWcydzsGF8t
X-Google-Smtp-Source: APXvYqwVbLHuBOds2bcUvBnozYP7vBaW75o+ZVsO44Ua7BzILzdQ10yqTmKSa1KUthaYmXtf9oN8bANsV1eQnmT4dIk=
X-Received: by 2002:a2e:b007:: with SMTP id y7mr15517921ljk.215.1582125863113; 
 Wed, 19 Feb 2020 07:24:23 -0800 (PST)
MIME-Version: 1.0
References: <CA+ce6i2VDa6NAXgCxcs7ZrhOV_nh3ege-Z+gOgsWcinZLqdhFA@mail.gmail.com>
In-Reply-To: <CA+ce6i2VDa6NAXgCxcs7ZrhOV_nh3ege-Z+gOgsWcinZLqdhFA@mail.gmail.com>
Date: Wed, 19 Feb 2020 10:20:27 -0500
Message-ID: <CA+ce6i1+g-o+YMWRZAD_b6hPj9iN9MR=7MqRraTSBg8zBN-82w@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] E310 and latest sdcard image
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
From: Luke Whittlesey via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Luke Whittlesey <luke.whittlesey@gmail.com>
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

Never mind. I should have been using "speed grade 3" not 1 for my model of e310.

For future googlers this page [2] talks about how to read the product
number to determine the speed grade.
[2] https://kb.ettus.com/Ettus_USRP_E300_Embedded_Family_Hardware_Resources#SD_Card_Images

On Wed, Feb 19, 2020 at 9:33 AM Luke Whittlesey
<luke.whittlesey@gmail.com> wrote:
>
> Hello,
> I'm having trouble booting from the latest sdcard images for the e310. [1]
> I've tried a couple of different sd-cards, but consistently error out
> in uboot with the following error
>
> ````
> Copying FIT from SD to RAM...
> 5866988 bytes read in 338 ms (16.6 MiB/s)
> ## Loading kernel from FIT Image at 02000000 ...
> Could not find configuration node
> ERROR: can't get kernel image!
> ## Error: "distro_bootcmd" not defined
>
> ````
>
> Has anyone been able to successfully use the latest e310 images?
>
> Thanks.
>
> [1] https://files.ettus.com/binaries/cache/e3xx/meta-ettus-v3.15.0.0/e3xx_e310_sg1_sdimg_default-v3.15.0.0.zip

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
