Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E36567B8FA
	for <lists+usrp-users@lfdr.de>; Wed, 25 Jan 2023 19:06:05 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3B60C3843C5
	for <lists+usrp-users@lfdr.de>; Wed, 25 Jan 2023 13:06:04 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1674669964; bh=YU3cjg7cF20yMsyMpDZVXN88qsvgO5p+y1LVY4PPgkY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=dFliiEAdkuHRwBqhHkD9FXPEJfvOa/TUVs7NBx03XZ/IXakNpLu89MDg4v6eRDysj
	 CKMz/vj3cPoYJXgrSxR+BVzgVFob3uCVXqbjts7lhuB3hDqzYUyxop4bmNgA91IeDn
	 UCsVMEeUtWtufTUqn8xD6s5uZD18TuQ1IPtlxtFugLUbPbj/vtxlaBCiQ6A0LSwKnC
	 fbVXeiM6tndkJW8UoSYzJSP6v/T6QkrklWHsBGJ26CK79OKpxK8F0f3Aoo7RDsKxNy
	 AOQcNZ6arOFHSQRD0emEITtcFttoOJtVGjQG2/KhXEFad33iCQjg4u9Moc3e1xL04D
	 jOR4dTjrdi/ZA==
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 587B6380953
	for <usrp-users@lists.ettus.com>; Wed, 25 Jan 2023 13:04:39 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="NlOpwi3/";
	dkim-atps=neutral
Received: by mail-qt1-f176.google.com with SMTP id j9so16704674qtv.4
        for <usrp-users@lists.ettus.com>; Wed, 25 Jan 2023 10:04:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iU8gQtt5n90iDj5Kh8HLz5TVQbDrqTYZVOHnz8sYJAA=;
        b=NlOpwi3/5OEQBNofbL/vEP7zfbm0EZ5dSRkNdld/UMxAm5UhvGo9xS4ieFT6t+PzYQ
         goTDj6ll+96DC1Fu66AUx+0zrwplUZ1sbqXASFBpCweUUNJdnvSFisr9R/j3e+38Ck6+
         l83dWAH8GE0cHRSIifGPtavaA5OAVtd9U9I4eK6C0kKsvUtyTAUwiX3A4utfho264+op
         moelBGX+OIzhTQs/va2YJ7z49bAd8tovvluJa6NGDVgHStu1v1IABwLl5dAvn4dCJeQt
         4mna1HImUVDXQv6HP/S2DWHjCFXWyDeDCyJS9pcTpcENQ5zC6m6TeiWTUKVlNDiXMJLV
         ZQCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iU8gQtt5n90iDj5Kh8HLz5TVQbDrqTYZVOHnz8sYJAA=;
        b=yYB9CiH8mpa6QFCMSKsP3sHfM+mBPISMHRJhFHduEMEuC595zcD6iKG5hVE0/9kaLN
         mxLRO1CIMXMxwfgZ8XaGajNcuDs7M994OM4Dyk0iQvj+NlAT2res1HTjN4PwJGkZfvrG
         ss2EtCC6adGiTi6RcfA/5wpYJgCmBAtd/1r0S7u6hLR3cYrqHs1/1muLtpCZ6xKawq5Y
         10upHoJI15BZbl3OwxK4de5c04PlNKDa1W+O1XxntlxRa7V/LtA8F5VQLVgmcsgvz4h9
         L/tGWRP6GlpWuGM0OQc/M4PHsnCkdJ2BFifhug09dC6NX0N5Py90FSQbRSzR0RfFbSRu
         /AuA==
X-Gm-Message-State: AFqh2krqJAW94oxZ79rS/IGjdeJ2o2+QOAASzCXy+2JtcJNTyGUxDXVm
	zNBBlLFK4wtYSnY4YNx1+rPeLGu+kcA=
X-Google-Smtp-Source: AMrXdXuVBvohB4Bq603a30w75MUa3vS5uMJBfu2CGLkW4/f4gIkuULA3mTcqwqnjXdq4tCe/CN9yZQ==
X-Received: by 2002:ac8:5150:0:b0:3b6:3030:33c0 with SMTP id h16-20020ac85150000000b003b6303033c0mr48967843qtn.58.1674669878706;
        Wed, 25 Jan 2023 10:04:38 -0800 (PST)
Received: from [192.168.2.199] (bras-base-smflon1825w-grc-21-184-144-50-56.dsl.bell.ca. [184.144.50.56])
        by smtp.googlemail.com with ESMTPSA id 18-20020ac856f2000000b0039cd4d87aacsm3639204qtu.15.2023.01.25.10.04.38
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Jan 2023 10:04:38 -0800 (PST)
Message-ID: <2e5069d0-778e-2364-6741-8fbd6115480b@gmail.com>
Date: Wed, 25 Jan 2023 13:04:37 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <vAwWsjbJX9HaKDE3zUZeVFZiQmo96IcYXESPb0n5nM@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <vAwWsjbJX9HaKDE3zUZeVFZiQmo96IcYXESPb0n5nM@lists.ettus.com>
Message-ID-Hash: E3C6KINWEWIHIR5XUPLSZ3KIU3J3SABQ
X-Message-ID-Hash: E3C6KINWEWIHIR5XUPLSZ3KIU3J3SABQ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Parsing dat file produced by rfnoc_rx_to_file
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/E3C6KINWEWIHIR5XUPLSZ3KIU3J3SABQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 25/01/2023 13:01, jmaloyan@umass.edu wrote:
>
> Hello,
>
> I am currently following instructions for RFNoC here 
> https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0.
>
>
> I get a file when running the executable rfnoc_rx_to_file, called 
> usrp_samples.dat. However, I am lost as to how I am supposed to parse 
> this file. Is there any instructions on how it parse it, or a 
> python/c++ script that parses it?
>
> Thanks
>
> Joe
>
>
What arguments did you pass to rnoc_rx_to_file?

The default format will be complex-float, in native-binary format, with 
IQ interleaved.


_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
