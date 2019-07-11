Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F30BA65E14
	for <lists+usrp-users@lfdr.de>; Thu, 11 Jul 2019 18:59:44 +0200 (CEST)
Received: from [::1] (port=39966 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hlcPy-0005mF-HV; Thu, 11 Jul 2019 12:59:38 -0400
Received: from mail-qt1-f177.google.com ([209.85.160.177]:32809)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1hlcPu-0005gm-QD
 for usrp-users@lists.ettus.com; Thu, 11 Jul 2019 12:59:34 -0400
Received: by mail-qt1-f177.google.com with SMTP id r6so836644qtt.0
 for <usrp-users@lists.ettus.com>; Thu, 11 Jul 2019 09:59:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=Mz6kTxkGeIyK/HRKPJ9rNkKzHofZcHi8p+2ERNscMoM=;
 b=AQDvZxOIp+OULL7sDjhBXQgahLOs2aP97+c3bBIRn8dmxAFHh6qvY1Mst/CYxA/56S
 Q1Ytsy9YBvV6sRiLbfIUqezL2iB9YbP2OFUVkyy4w3FFxWVlXVy0sCbV+y/yxeuyHViY
 HyEeLnJaoVxz4oc0sgHLPllCoi7JGDAkQvHcQw5SmCWcYnEjsjpCHms6u6gp7LL7Popd
 uqX4MSzVwakmWHV4Nj/9l3iplKPgV7nv7xeQdjUyfpPojBRJuruKtMPKsUK9LIASxean
 b/AhTQL4wDP+h8PsaLQ9i6X7JHJEBZVI4OwABFzPuV2zvznx/s4jrEuIMsi+tpKCxl0A
 DP4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=Mz6kTxkGeIyK/HRKPJ9rNkKzHofZcHi8p+2ERNscMoM=;
 b=H9NsCR+ArZ2W08LHDyh5pCUMtQOFDpP1in+G0ovXLOM3mf3sG+ujurEDWJCuc5eEgp
 sR+DhO3WpbpBLckezREfqN8iiSQTgGjCGFC9S7QCbXy1H/wwqiyd8UsxOnt41QU4K+7R
 NGaXcm1dDFBN7elAkg73n4UJVn3sPuf4N/KVWWvXObhWrtsVce3b7ggX132d+fYCoZlw
 Ynk65vRUWa6P28ZeYGPAehTeD0FqKeaY88oLo3igj7bXyCM91rkAlxxC/mWTkb284HgI
 0ZtxnKGXnI70ftMYacZbQ+X4qWdKihyw2QEpQr7eIJjUEcWrAezn+DEf6Mvcq8Z2UcHC
 ++7Q==
X-Gm-Message-State: APjAAAWc59shG03dcdb4jS+L1R3d3xOAChB0IXb2gv56zuGpPyfL92IA
 Q1fV3+v49Y1Z9bdm5UqIJtZBwoDG
X-Google-Smtp-Source: APXvYqx+iGr4xYRQKB2kY/TjM5O2QUllr5/Pupm03LE5KBFaoU1NdWbDy7VdORfbas2Kne1HLgQtTg==
X-Received: by 2002:ac8:285c:: with SMTP id 28mr2713009qtr.186.1562864326014; 
 Thu, 11 Jul 2019 09:58:46 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-20.dsl.bell.ca.
 [174.95.14.20])
 by smtp.googlemail.com with ESMTPSA id r40sm2737088qtr.57.2019.07.11.09.58.45
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Jul 2019 09:58:45 -0700 (PDT)
Message-ID: <5D276AC5.8090109@gmail.com>
Date: Thu, 11 Jul 2019 12:58:45 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAHP8DwK0jVZWxnDmXfVBiyJ2DzJDs6xXFOoRbhRmgWGv7HNO_w@mail.gmail.com>
In-Reply-To: <CAHP8DwK0jVZWxnDmXfVBiyJ2DzJDs6xXFOoRbhRmgWGv7HNO_w@mail.gmail.com>
Subject: Re: [USRP-users] [B210] Read raw ADC data directly in Matlab
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

On 07/11/2019 12:27 AM, lc via USRP-users wrote:
> Hi all,
>
> I'm using B210, and try to dump the raw ADC data, feed it into matlab 
> to test the design.
> Is it possible to do this in matlab without hacking the UHD?
> (I think the data output shown in the simulink is from FPGA?)
>
> Best wishes;
> Chao Liao
>
What do you mean by "raw ADC data"??  The I/Q values you would 
ordinarily get in a stream are effectively linear proxies for the
   raw ADC values and carry no less information than those samples.

In the B210, due to the architecture of the RF chip, it's not really 
meaningful to ask for "raw ADC values", since the RF chip has
   a very-high-speed (almost 1GHz) sigma-delta ADC, followed by internal 
DSP circuitry that doesn't really give you access to
   the "raw" samples.

What application is it that you feel that you need "raw" ADC samples?




_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
