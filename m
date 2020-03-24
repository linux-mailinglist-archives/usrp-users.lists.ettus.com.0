Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4306B191742
	for <lists+usrp-users@lfdr.de>; Tue, 24 Mar 2020 18:08:50 +0100 (CET)
Received: from [::1] (port=35950 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jGn2l-0007BZ-Mb; Tue, 24 Mar 2020 13:08:47 -0400
Received: from mail-qt1-f195.google.com ([209.85.160.195]:36589)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jGn2i-00070E-Pc
 for usrp-users@lists.ettus.com; Tue, 24 Mar 2020 13:08:44 -0400
Received: by mail-qt1-f195.google.com with SMTP id m33so15588323qtb.3
 for <usrp-users@lists.ettus.com>; Tue, 24 Mar 2020 10:08:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=uI0ZuiOjkpQlOOJVhqmH36QlPJPhux6zxdj23KbE30g=;
 b=YIqnONXbSQnKUIp/aFsYcN9OB8gm3br8yXIZD0c5WCLzY1YYUHQztG//20kPTpknNS
 OmhaWM41NeeoE/pNcfM3Teo0KwD6YTHk63x6NzhuuUKD9rGg+IqqmX/odV8HBYd0YOEi
 V3EwkwYtDD+ZBdV64Lr7Ky2IDjW6ot0d4apymre1j9pc+L7zK8O1GDtWUzwE6sYwrPQF
 fu5MZxdETybEWTfpZIppFbKaXRT3Ea7BB60J4oUJniZU41DiPDHgtGW4tqT7mgR+GwP8
 jnfOiUD/RmwShCULTncHS8WD+F1D1r04RocssnLBO3zxxrt040UCMUxtFAXg5S0vSuyx
 o5Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=uI0ZuiOjkpQlOOJVhqmH36QlPJPhux6zxdj23KbE30g=;
 b=F9Fs5oM5Th9plEyfQbKEy+v1Z1U2kfKMoyycCLio1Sp5cOkf67ni8B3v2knqMXXhrL
 N5V7rFIxutmnGkzyEGiYJE3ocQAknjKUKk5ub+pxLdZMLy1ZRIpIKTGCob8wuG4x3Ltt
 lnN08kU1v+VtiWxvDqxz/sS0R7JRLtOLCgOvSlxBGRiHpzAhGzsNPwCLXKCitpFTrUvw
 8VkCtHbqK76huxJF2RQA9XTWBhF61SwNIRIG7u3+DqweivA8dIjX+ZdCDuHdtzLhHgiK
 a1pfFTQAZYnAzapkPOf1OVM9encpfwMax+n7t1imbWJkFX48m0DPaSVr9Yo5+ikYye8K
 RaEg==
X-Gm-Message-State: ANhLgQ3u/Gzo1piSnZpwonh6Mye3qaMDscNtnEDtpDMsFupcelIz8R9p
 yaA3jwKwUoagJVgve6pAffoUBl1d
X-Google-Smtp-Source: ADFU+vtiT+ArbdbsB7NyUl4qayEYwFX8BQjtEr85DiHIxtU3/6aScwxn3Uq4nGu9U6cGoGwLo76bIQ==
X-Received: by 2002:ac8:691a:: with SMTP id e26mr12536404qtr.58.1585069683680; 
 Tue, 24 Mar 2020 10:08:03 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-12-204.dsl.bell.ca.
 [174.95.12.204]) by smtp.googlemail.com with ESMTPSA id
 m65sm13845330qke.109.2020.03.24.10.08.02
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 24 Mar 2020 10:08:02 -0700 (PDT)
Message-ID: <5E7A3E71.2000200@gmail.com>
Date: Tue, 24 Mar 2020 13:08:01 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <0c03636e-f4d0-40ee-a85a-002d42937edf@novagrid.com>
In-Reply-To: <0c03636e-f4d0-40ee-a85a-002d42937edf@novagrid.com>
Subject: Re: [USRP-users] set_time_next_pps with X300
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

On 03/24/2020 12:49 PM, Olivier Ravard via USRP-users wrote:
> Hi,
>
> In order to synchronize several devices, We used to use an external PPS and 10MHz
> reference and call set_next_time_pps.
>
> This works fine since many years using UHD 3.9 and N210. We recently use X300 + TwinRx
> using UHD 3.10.3 and it seems
> that it does not work.
>
> It seems that set_time_next_pps has no effect because the metadata.time_spec of the
> received streamed data always
> corresponds to the delay from the usrp object creation.
> Example:
>
>      - during the synchro procedure:
>              usrp.set_time_next_pps(time_spec_t(1585067798, 0.0))
>      - during receiving data:
>              rx_stream->recv(&buff_sc16.front(), buff_sc16.size(), md, 1.0);
>              cout << "received date :" << md.time_spec.get_full_secs() << " " <<
> md.time_spec.get_frac_secs() << endl;
>              // this line prints "received date :74 0.778126" if the usrp object was
> created since around 74 secs
>
> Does this function change its behavior ?
>
> thanks
>
> olivier
>
>
What type of 1PPS source are you using?



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
