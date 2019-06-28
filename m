Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D3D755A239
	for <lists+usrp-users@lfdr.de>; Fri, 28 Jun 2019 19:25:08 +0200 (CEST)
Received: from [::1] (port=37976 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hgucP-0000ej-1a; Fri, 28 Jun 2019 13:25:01 -0400
Received: from mail-qk1-f171.google.com ([209.85.222.171]:37981)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1hgucL-0000Z3-Rp
 for usrp-users@lists.ettus.com; Fri, 28 Jun 2019 13:24:57 -0400
Received: by mail-qk1-f171.google.com with SMTP id a27so5469033qkk.5
 for <usrp-users@lists.ettus.com>; Fri, 28 Jun 2019 10:24:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=zgAE1NcZQUvtyJByc7r94JTmaO45ZrzzhL/iX5sfZts=;
 b=K7e3ufdrkcdt7Fqb9cNnoL8Oiopbn/RCqiz93fB8Jn7KomZCfuTdkA5x2jfHlmviUk
 YgjQyVGNOGCzzD7EqKxeAXMI5eX3gP74airjtCVXopuJOQ2HPt+qgYHHT2MmPrJX0Hpn
 VYJdZXiFGOz6/9yrlq+qDfGRtEJ/im2CwGpVAribFAA9icSbFdu8AaEVgOFbVqcsMU18
 QBXalxFgQUzkTLY7eh88vWFkgGBGHEcgFN8qNvsmz/yEq1vQbO8We+6sSU3BXu2Qn5mn
 s0py6YAgJ02BK+GMsuNQJ8EzcNvlMKQEYJ6TleUb8LUu6fzXzfqQlW4RB7yVxLJqjGmu
 QEWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=zgAE1NcZQUvtyJByc7r94JTmaO45ZrzzhL/iX5sfZts=;
 b=PPYkh4JJIJIIeXIy+QO8blOslBQAgTX6NQhd4yH67XzquXtgKSN1fxH4d7ggGUhOFK
 jQOtpjZa37jf2TPxCj4Y7FeG2eXum39lYViUl44WwgQH7x4YIj08fvwBNCxarK83wWKb
 /vdX48qqjlfi7fvhVnc6R3Hg0TtW+vAG6WiXMFAwI1kvXVs68AmL8eaiA9PC/0WnEtvm
 i4zszT/ZSBRBe6rYugxH2Nv5NgRblwL2NEg62hmBPZSj6lM7uMmJBTBUPkil1/ObyNS4
 zCdMHeAZdXg1eKsFL3dyjl+DgF5Ot+K24roXCiPI1B1Zf3KwVuNMPRFp1BCZjR4okQKt
 PsgA==
X-Gm-Message-State: APjAAAWtUMlKrcOsuBG09oj85gV8SRd6T2Wp4UjnPHbOG5WpakUhJCht
 1aafipNVTHJGjasVB8DwFy9j4OmH
X-Google-Smtp-Source: APXvYqx+jRCqjdn/1vWBEciYXaeW4gx/+ZbSB/edBwTjgu5A9O625gNTIoGZp/Tj/1gciDlgaJeHIA==
X-Received: by 2002:a37:4f47:: with SMTP id d68mr9765788qkb.104.1561742657280; 
 Fri, 28 Jun 2019 10:24:17 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp140-02-174-95-204-168.dsl.bell.ca. [174.95.204.168])
 by smtp.googlemail.com with ESMTPSA id m44sm1317353qtm.54.2019.06.28.10.24.16
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 28 Jun 2019 10:24:16 -0700 (PDT)
Message-ID: <5D164D40.5060506@gmail.com>
Date: Fri, 28 Jun 2019 13:24:16 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <732f0af3de67dcc002938e9d954e3cebc0cd4ec8.camel@sbcglobal.net>
In-Reply-To: <732f0af3de67dcc002938e9d954e3cebc0cd4ec8.camel@sbcglobal.net>
Subject: Re: [USRP-users] E310 v3.15.0.0 pre-release
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
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
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

On 06/28/2019 09:12 AM, d.des via USRP-users wrote:
> I found the new SD image and cross-compiler described in
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2019-May/059897.html
> and it seems to work well for the UHD that's pre-installed. I was also
> able to build the v3.15.0.0 pre-release host code from git and run it
> from a sshfs "newinstall" directory using the old instructions as a
> guide. rx_samples_to_file and rfnoc_rx_to_file seem to make valid
> recordings. I used the script in fpga-src...scripts to generate some
> FPGA images with different RFNOC blocks and they seemed build OK with
> Vivado 2018.3 but I can't figure out how to load them into uhd on the
> E310. uhd_usrp_probe, using either the baseline SD version of uhd or my
> cross-compiled version, always shows the same modules (DDC_0, DUC_0)
> regardless of what .bit files are in the UHD_IMAGES_DIR or where I try
> to point it with --args="fpga=..." I've gone so far as to delete all of
> the .bit images that I can find on the SD card and uhd still finds that
> same fpga image whether I use the baseline or the newinstall version.
> It's as if that particular FPGA image is baked into the uhd build or
> some other location that updatedb...locate can't find rather than being
> read from a file that I can change.
>
> In general, is there a way to see which RFNOC modules are built into an
> fpga .bit image other than uhd_usrp_probe?
>
>
>
>
See this thread here:

http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2016-March/046784.html



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
