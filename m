Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 95FB9255062
	for <lists+usrp-users@lfdr.de>; Thu, 27 Aug 2020 23:13:34 +0200 (CEST)
Received: from [::1] (port=34002 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kBPD7-0000a9-1e; Thu, 27 Aug 2020 17:13:29 -0400
Received: from mail-qk1-f175.google.com ([209.85.222.175]:35887)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kBPD3-0000W7-4S
 for usrp-users@lists.ettus.com; Thu, 27 Aug 2020 17:13:25 -0400
Received: by mail-qk1-f175.google.com with SMTP id g26so7498352qka.3
 for <usrp-users@lists.ettus.com>; Thu, 27 Aug 2020 14:13:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=28S31VJUpt6VirM7cefbSgz9op84+KMEIbaGXIChdv8=;
 b=Wnlly7B0mPWkiFV0iA9j/xPWEkSrPdf6PfyCUtYs1ntb4kMD5WZBkvtkpWMExf/cyB
 oTVItITpRkZUkUlLsJGHV+Ec5XDvdjyHRZkAEwhSp93ADrelWhnuraydd6eNQuacq+TY
 TnTmko6HPuzItG/huvrV2QLyhy4wKo+WHE0GCkHpKm/X1zOGQSLeM+37CcePScY8EHY9
 3GR867w6VhLWgTlaicRVxaicWt/pG/Fp8j1ZfUlKAF/t98kCUqSCztRmflHPjYRhqrxt
 lxXj2Pto2Ws6LfCqFmI13vsZ4Waf8BUtEnF1xeDNl8C7Rrpy/H+lYTbAr44lXSawnXZc
 noIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=28S31VJUpt6VirM7cefbSgz9op84+KMEIbaGXIChdv8=;
 b=AyK+9klu+ozXkNbKspIpunbdQ0CRcy11E11Qae78+EHC0Y2F73cJ5NUM0eNoI1+ngm
 RHLMhQlCGeeS+wlJI2DZtaeJlAfj7YegB0po95ndmY+Mp8Ufhf1AAecuK2TrwgJuc5im
 Vx3TCIqnq3jXvWoEqP/4ZrBkSOU52WUA4KM8N5yDUk9FVhPmt4LfQsT0Nk5t334RR4Ob
 OxrAeaUgju8jEDCtMdQAe3hlQOUe4PIUoVl56/04st8N64bbdCww33UgPIj6LyHWuhUM
 hQ0BmPNBUvBtpRqyVh6v7ZL/1P/IiwrFdP4+7wMS+YWTAN0zPTm1agnwKNeXu1frpi38
 cfAg==
X-Gm-Message-State: AOAM533zLtTnCJiqXhTiDz5+SKfpUk+rF9nLDpEnsn1QhVRIB6uyxEZ/
 Byz58x6Cd65lcPPlv7+xT57H2nUWiaY4xw==
X-Google-Smtp-Source: ABdhPJyyQlxFClQAhFWMUSlihRT6ScbvJf3teLv/mXglqE3h4tXRVJPOg3vypSeL64cq0VgIF52spA==
X-Received: by 2002:a37:86c1:: with SMTP id
 i184mr21076116qkd.189.1598562764342; 
 Thu, 27 Aug 2020 14:12:44 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp130-01-69-158-143-119.dsl.bell.ca. [69.158.143.119])
 by smtp.googlemail.com with ESMTPSA id o47sm2926452qtk.19.2020.08.27.14.12.43
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 27 Aug 2020 14:12:43 -0700 (PDT)
Message-ID: <5F4821CB.1040501@gmail.com>
Date: Thu, 27 Aug 2020 17:12:43 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Ivan Zahartchuk <adray0001@gmail.com>, 
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <CAPRRyxupfiy8YpfrZR_xfAq4jQdhQq-JaaF_CUK3B6X820F6=g@mail.gmail.com>
 <CAPRRyxsCc2uFOghYQKYh4aS--fOVTr2LcE4ojNG-gDNjYJvtew@mail.gmail.com>
 <CAGNhwTN4J+f02kmB3jU5E9nhz_j69PW8yY-pw=jgVmzhNX4nhQ@mail.gmail.com>
 <CAPRRyxvfdfuxsLP+SQ__S5_ZXqHZohwqgfuhEPffznxaP5TuAw@mail.gmail.com>
 <CAGNhwTMB-xmiC8_T_9h3rtOP+=oQdxXr30D+hhos7Xo_3_xZPg@mail.gmail.com>
 <CAPRRyxumHkxt1TpnhdSpyhecsVPhJhfoe3MszwMzsKWB35-GMw@mail.gmail.com>
 <CAGNhwTM5LE_u-p-cmUGCDTu0pfZOpOrFaxKGyxZcX3Asn+u52w@mail.gmail.com>
 <CAPRRyxtXaZonYzsaGq=xGnO9zbptyt4Mse-Oh4zNbtNxv4HqhQ@mail.gmail.com>
 <CAGNhwTOwsP6BaseXkPayMg6yQVY-P3SEF-k56X-CE1fgDNqo_g@mail.gmail.com>
 <CAPRRyxsWsqbQtYRfVL99Oez0Vkp-+=sktsGmsd1ZDg8oDpAW5w@mail.gmail.com>
 <CAGNhwTNboTno3Ok6=k1HfZ=g=OpYW3_4k0DpHZ+frDAHVV9s1A@mail.gmail.com>
 <CAPRRyxtyuiCF4ikKZsz8T-gNSmfWC0BBEgVA6ypEEEbN=2Y-4g@mail.gmail.com>
 <5F47D6C0.4060803@gmail.com>
 <CAPRRyxu3HqMS+3F68aE=z=YgHZeVur57bhtNdj-CBvDVgfpoug@mail.gmail.com>
In-Reply-To: <CAPRRyxu3HqMS+3F68aE=z=YgHZeVur57bhtNdj-CBvDVgfpoug@mail.gmail.com>
Subject: Re: [USRP-users] GPIO setup via gnuradio
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

On 08/27/2020 12:45 PM, Ivan Zahartchuk wrote:
> UHD 3.15
> uhd_cal_rx_iq_balance
> as far as I understand your question, then the calibration program that is provided with the uhd driver
>
Have you noticed a difference in image suppression for different tuned 
frequencies?  What is your signal amplitude, and what is your gain setting?



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
