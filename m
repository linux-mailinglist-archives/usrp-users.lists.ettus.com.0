Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AD997254134
	for <lists+usrp-users@lfdr.de>; Thu, 27 Aug 2020 10:52:45 +0200 (CEST)
Received: from [::1] (port=55972 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kBDeD-0004fu-SK; Thu, 27 Aug 2020 04:52:41 -0400
Received: from mail-ej1-f50.google.com ([209.85.218.50]:42209)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <martin.braun@ettus.com>)
 id 1kBDeA-0004ZP-0j
 for usrp-users@lists.ettus.com; Thu, 27 Aug 2020 04:52:38 -0400
Received: by mail-ej1-f50.google.com with SMTP id j25so6585715ejk.9
 for <usrp-users@lists.ettus.com>; Thu, 27 Aug 2020 01:52:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xzZ2ZfPPhD87FDUJFEL2WAX9H94MXnXg1UeIPThCE20=;
 b=qoc2N+Z0EYRgtyyzRRXS9m5Cx+qk1kzqiCCQc5jht6VUG/4JJ2cONVUxK2HeDischC
 fdr7TL+5UpyP1P64tqNPaPZgPF0BKWR2SAfyKryLXEpSZNynF8e3MCdI7feFrbDUvJj6
 L7v4wF9uOt7KIV8YgcW3pkZxG8ZVhOdWGtdmS6WB9fp8+F8Ezhuwcu9UlsQdVrfEPIlI
 +KzGEQRsztnDaL5XxQopzFKzefxxZOD7xpiP9+9gPg7CcBIHlgZNP8pLNpv2huHQ7ted
 Z+m37CC3+stk1I73o1xUsrEXUcSc8vxMEAKOx3pm5nkOCzvxLATJf13BYZeKexkXRX1S
 ZadA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xzZ2ZfPPhD87FDUJFEL2WAX9H94MXnXg1UeIPThCE20=;
 b=O0tMe8C1u3Xc4ZGCLnTskSLpY6YpI/w6tK/cLPSMLLhJ9/ZaNkL/7LkfWfUO28y7mA
 sbQdwip9Bk2HiQ1uIPmG06416ps6P5KyW3ku+qudlDMcWx2NdXitWGCFqsbAnqkMaXdj
 Qq0hrDZuvdNB/NfSHsGPz6GNssZ0q/Kw66ktH7eL5PoJK4RKYQz3trSHZq9XuKJx3CpM
 BaIXEN+XizRnPAst3TykPLm3Hu80LqUQ+JwQeMwwnKdjYZMiYxHkJR2rwLYfP55YOHF0
 vBVAQ0UmVfzjCob74RMfmD6u5UZnB3ncXCy0ADzY3c/qpjyd8RdaM8ru6dSGIkRHFMSH
 Ij4Q==
X-Gm-Message-State: AOAM5323hUlC7ml0oxXVc4fvfUE6qeQppZa5rZFT+0fKswo00d5tZtkL
 l9e3lf10R36sQEhM0hNdPIdWS+dQWXJVyYt11fLqTXci
X-Google-Smtp-Source: ABdhPJyKR8D5/Og7OMK8zhE9vXkaxqDR2XtARVavSYLc28q38Y4YfWQ3HGk4ZJDtBnPAOEGfFRJBYYTFqzxwwovQdIo=
X-Received: by 2002:a17:906:2408:: with SMTP id
 z8mr10384332eja.421.1598518316930; 
 Thu, 27 Aug 2020 01:51:56 -0700 (PDT)
MIME-Version: 1.0
References: <CAHL+j08xqrt5H7K2xPGS5Exvi-nCO4ckiqJa9DJOD1RJuJ5bkg@mail.gmail.com>
In-Reply-To: <CAHL+j08xqrt5H7K2xPGS5Exvi-nCO4ckiqJa9DJOD1RJuJ5bkg@mail.gmail.com>
Date: Thu, 27 Aug 2020 10:51:45 +0200
Message-ID: <CAFOi1A6NL3MjND4feHEYGVKRLPTt3cG7zU_CNqk6njiWYk_FHw@mail.gmail.com>
To: Sylvain Munaut <246tnt@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] set_time_pps implementation mismatch between uhd &
 fpga (race condition)
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
From: Martin Braun via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Martin Braun <martin.braun@ettus.com>
Content-Type: multipart/mixed; boundary="===============0378143186255298394=="
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

--===============0378143186255298394==
Content-Type: multipart/alternative; boundary="00000000000072b4f205add80c28"

--00000000000072b4f205add80c28
Content-Type: text/plain; charset="UTF-8"

Sylvain,

the UHD/C++ code you're quoting is for USRP2/B100. timekeeper.v on the
other hand is in the usrp3/ subdirectory, so it's for the Gen-3 devices,
and B200 (because B200 is Gen-2.5 and we round it up to 3... or something
like that).

If we take a look at time_core_3000.cpp, then we see:

   86     void set_time_now(const uhd::time_spec_t& time)


   87     {


   88         const uint64_t ticks = time.to_ticks(_tick_rate);


   89         _iface->poke32(REG_TIME_HI, uint32_t(ticks >> 32));


   90         _iface->poke32(REG_TIME_LO, uint32_t(ticks >> 0));


   91         _iface->poke32(REG_TIME_CTRL, CTRL_LATCH_TIME_NOW);


   92     }


   93


   94     void set_time_sync(const uhd::time_spec_t& time)


   95     {


   96         const uint64_t ticks = time.to_ticks(_tick_rate);


   97         _iface->poke32(REG_TIME_HI, uint32_t(ticks >> 32));


   98         _iface->poke32(REG_TIME_LO, uint32_t(ticks >> 0));


   99         _iface->poke32(REG_TIME_CTRL, CTRL_LATCH_TIME_SYNC);


  100     }


  101


  102     void set_time_next_pps(const uhd::time_spec_t& time)


  103     {


  104         const uint64_t ticks = time.to_ticks(_tick_rate);


  105         _iface->poke32(REG_TIME_HI, uint32_t(ticks >> 32));


  106         _iface->poke32(REG_TIME_LO, uint32_t(ticks >> 0));


  107         _iface->poke32(REG_TIME_CTRL, CTRL_LATCH_TIME_PPS);


  108     }



...as you say, we latch on CTRL.

Note that on master branch / UHD 4.0, only b200 uses time_core_3000.cpp (at
this point, the naming is confusing, I admit, but it's for historical
reasons).
X300 sets the time via the ZPU (see
https://github.com/EttusResearch/uhd/blob/master/host/lib/usrp/x300/x300_mb_controller.cpp#L97-L118),
and the other USRPs set the time via MPM, which then also pokes motherboard
registers (
https://github.com/EttusResearch/uhd/blob/master/host/lib/usrp/mpmd/mpmd_mb_controller.cpp#L43-L61
).

This is because the timekeeper has moved out of the RFNoC blocks, and runs
as a global clock/timekeeper on the side.

--M

On Thu, Aug 27, 2020 at 10:17 AM Sylvain Munaut via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
>
> In UHD you find :
>
>     void set_time_next_pps(const uhd::time_spec_t &time){
>         const uint64_t ticks = time.to_ticks(_tick_rate);
>         _iface->poke32(REG_TIME64_TICKS_LO, uint32_t(ticks >> 0));
>         _iface->poke32(REG_TIME64_IMM, FLAG_TIME64_LATCH_NEXT_PPS);
>         _iface->poke32(REG_TIME64_TICKS_HI, uint32_t(ticks >> 32));
> //latches all 3
>     }
>
> with seemingly the write of the 'HI' part being the trigger point.
>
> In the FPGA code (timekeeper.v) you have :
>
> setting_reg #(.my_addr(SR_TIME_CTRL), .width(3)) sr_ctrl
> (.clk(clk), .rst(reset), .strobe(set_stb), .addr(set_addr), .in(set_data),
> .out({set_time_sync, set_time_pps, set_time_now}), .changed(cmd_trigger));
>
> So the 'cmd_trigger' that synchronizes the action is on the 'CTRL'
> (aka REG_TIME64_IMM) register and not on the hi part of the time.
>
>
> TBH I'm not even sure how set_time_now works at all ... it has the
> same issue and AFAICT it would always end up using the previous value
> of the 'hi' register...
>
> Am I missing something here ?
>
> Cheers,
>
>     Sylvain Munaut
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000072b4f205add80c28
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+PGRpdj5TeWx2YWluLDwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXY+dGhl
IFVIRC9DKysgY29kZSB5b3UmIzM5O3JlIHF1b3RpbmcgaXMgZm9yIFVTUlAyL0IxMDAuIHRpbWVr
ZWVwZXIudiBvbiB0aGUgb3RoZXIgaGFuZCBpcyBpbiB0aGUgdXNycDMvIHN1YmRpcmVjdG9yeSwg
c28gaXQmIzM5O3MgZm9yIHRoZSBHZW4tMyBkZXZpY2VzLCBhbmQgQjIwMCAoYmVjYXVzZSBCMjAw
IGlzIEdlbi0yLjUgYW5kIHdlIHJvdW5kIGl0IHVwIHRvIDMuLi4gb3Igc29tZXRoaW5nIGxpa2Ug
dGhhdCkuPC9kaXY+PGRpdj48YnI+PC9kaXY+PGRpdj5JZiB3ZSB0YWtlIGEgbG9vayBhdCB0aW1l
X2NvcmVfMzAwMC5jcHAsIHRoZW4gd2Ugc2VlOjwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXY+wqDC
oCA4NiDCoCDCoCB2b2lkIHNldF90aW1lX25vdyhjb25zdCB1aGQ6OnRpbWVfc3BlY190JmFtcDsg
dGltZSkgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgPGJyPsKgIMKgODcgwqAgwqAgeyDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCA8YnI+wqAgwqA4OCDCoCDCoCDC
oCDCoCBjb25zdCB1aW50NjRfdCB0aWNrcyA9IHRpbWUudG9fdGlja3MoX3RpY2tfcmF0ZSk7IMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIDxicj7CoCDCoDg5
IMKgIMKgIMKgIMKgIF9pZmFjZS0mZ3Q7cG9rZTMyKFJFR19USU1FX0hJLCB1aW50MzJfdCh0aWNr
cyAmZ3Q7Jmd0OyAzMikpOyDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCA8YnI+wqAgwqA5MCDCoCDCoCDCoCDCoCBfaWZhY2UtJmd0O3Bva2UzMihSRUdfVElNRV9M
TywgdWludDMyX3QodGlja3MgJmd0OyZndDsgMCkpOyDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoDxicj7CoCDCoDkxIMKgIMKgIMKgIMKgIF9pZmFjZS0mZ3Q7
cG9rZTMyKFJFR19USU1FX0NUUkwsIENUUkxfTEFUQ0hfVElNRV9OT1cpOyDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCA8YnI+wqAgwqA5MiDCoCDCoCB9IMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIDxicj7CoCDCoDkzIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIDxicj7CoCDCoDk0IMKgIMKg
IHZvaWQgc2V0X3RpbWVfc3luYyhjb25zdCB1aGQ6OnRpbWVfc3BlY190JmFtcDsgdGltZSkgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqA8YnI+
wqAgwqA5NSDCoCDCoCB7IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIDxicj7CoCDCoDk2IMKgIMKgIMKgIMKgIGNvbnN0
IHVpbnQ2NF90IHRpY2tzID0gdGltZS50b190aWNrcyhfdGlja19yYXRlKTsgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgPGJyPsKgIMKgOTcgwqAgwqAgwqAg
wqAgX2lmYWNlLSZndDtwb2tlMzIoUkVHX1RJTUVfSEksIHVpbnQzMl90KHRpY2tzICZndDsmZ3Q7
IDMyKSk7IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIDxicj7C
oCDCoDk4IMKgIMKgIMKgIMKgIF9pZmFjZS0mZ3Q7cG9rZTMyKFJFR19USU1FX0xPLCB1aW50MzJf
dCh0aWNrcyAmZ3Q7Jmd0OyAwKSk7IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgPGJyPsKgIMKgOTkgwqAgwqAgwqAgwqAgX2lmYWNlLSZndDtwb2tlMzIoUkVH
X1RJTUVfQ1RSTCwgQ1RSTF9MQVRDSF9USU1FX1NZTkMpOyDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoDxicj7CoCAxMDAgwqAgwqAgfSDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCA8YnI+
wqAgMTAxIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIDxicj7CoCAxMDIgwqAgwqAgdm9pZCBzZXRfdGlt
ZV9uZXh0X3Bwcyhjb25zdCB1aGQ6OnRpbWVfc3BlY190JmFtcDsgdGltZSkgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqA8YnI+wqAgMTAzIMKgIMKgIHsg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgPGJyPsKgIDEwNCDCoCDCoCDCoCDCoCBjb25zdCB1aW50NjRfdCB0aWNrcyA9
IHRpbWUudG9fdGlja3MoX3RpY2tfcmF0ZSk7IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIDxicj7CoCAxMDUgwqAgwqAgwqAgwqAgX2lmYWNlLSZndDtwb2tl
MzIoUkVHX1RJTUVfSEksIHVpbnQzMl90KHRpY2tzICZndDsmZ3Q7IDMyKSk7IMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIDxicj7CoCAxMDYgwqAgwqAgwqAgwqAg
X2lmYWNlLSZndDtwb2tlMzIoUkVHX1RJTUVfTE8sIHVpbnQzMl90KHRpY2tzICZndDsmZ3Q7IDAp
KTsgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqA8YnI+wqAg
MTA3IMKgIMKgIMKgIMKgIF9pZmFjZS0mZ3Q7cG9rZTMyKFJFR19USU1FX0NUUkwsIENUUkxfTEFU
Q0hfVElNRV9QUFMpOyDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCA8YnI+wqAgMTA4IMKgIMKgIH0gwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgPGJyPjwvZGl2PjxkaXY+PGJyPjwvZGl2
PjxkaXY+Li4uYXMgeW91IHNheSwgd2UgbGF0Y2ggb24gQ1RSTC48L2Rpdj48ZGl2Pjxicj48L2Rp
dj48ZGl2Pk5vdGUgdGhhdCBvbiBtYXN0ZXIgYnJhbmNoIC8gVUhEIDQuMCwgb25seSBiMjAwIHVz
ZXMgdGltZV9jb3JlXzMwMDAuY3BwIChhdCB0aGlzIHBvaW50LCB0aGUgbmFtaW5nIGlzIGNvbmZ1
c2luZywgSSBhZG1pdCwgYnV0IGl0JiMzOTtzIGZvciBoaXN0b3JpY2FsIHJlYXNvbnMpLjwvZGl2
PjxkaXY+WDMwMCBzZXRzIHRoZSB0aW1lIHZpYSB0aGUgWlBVIChzZWUgPGEgaHJlZj0iaHR0cHM6
Ly9naXRodWIuY29tL0V0dHVzUmVzZWFyY2gvdWhkL2Jsb2IvbWFzdGVyL2hvc3QvbGliL3VzcnAv
eDMwMC94MzAwX21iX2NvbnRyb2xsZXIuY3BwI0w5Ny1MMTE4Ij5odHRwczovL2dpdGh1Yi5jb20v
RXR0dXNSZXNlYXJjaC91aGQvYmxvYi9tYXN0ZXIvaG9zdC9saWIvdXNycC94MzAwL3gzMDBfbWJf
Y29udHJvbGxlci5jcHAjTDk3LUwxMTg8L2E+KSwgYW5kIHRoZSBvdGhlciBVU1JQcyBzZXQgdGhl
IHRpbWUgdmlhIE1QTSwgd2hpY2ggdGhlbiBhbHNvIHBva2VzIG1vdGhlcmJvYXJkIHJlZ2lzdGVy
cyAoPGEgaHJlZj0iaHR0cHM6Ly9naXRodWIuY29tL0V0dHVzUmVzZWFyY2gvdWhkL2Jsb2IvbWFz
dGVyL2hvc3QvbGliL3VzcnAvbXBtZC9tcG1kX21iX2NvbnRyb2xsZXIuY3BwI0w0My1MNjEiPmh0
dHBzOi8vZ2l0aHViLmNvbS9FdHR1c1Jlc2VhcmNoL3VoZC9ibG9iL21hc3Rlci9ob3N0L2xpYi91
c3JwL21wbWQvbXBtZF9tYl9jb250cm9sbGVyLmNwcCNMNDMtTDYxPC9hPikuPC9kaXY+PGRpdj48
YnI+PC9kaXY+PGRpdj5UaGlzIGlzIGJlY2F1c2UgdGhlIHRpbWVrZWVwZXIgaGFzIG1vdmVkIG91
dCBvZiB0aGUgUkZOb0MgYmxvY2tzLCBhbmQgcnVucyBhcyBhIGdsb2JhbCBjbG9jay90aW1la2Vl
cGVyIG9uIHRoZSBzaWRlLjwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXY+LS1NPGJyPjwvZGl2Pjwv
ZGl2Pjxicj48ZGl2IGNsYXNzPSJnbWFpbF9xdW90ZSI+PGRpdiBkaXI9Imx0ciIgY2xhc3M9Imdt
YWlsX2F0dHIiPk9uIFRodSwgQXVnIDI3LCAyMDIwIGF0IDEwOjE3IEFNIFN5bHZhaW4gTXVuYXV0
IHZpYSBVU1JQLXVzZXJzICZsdDs8YSBocmVmPSJtYWlsdG86dXNycC11c2Vyc0BsaXN0cy5ldHR1
cy5jb20iPnVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPC9hPiZndDsgd3JvdGU6PGJyPjwvZGl2
PjxibG9ja3F1b3RlIGNsYXNzPSJnbWFpbF9xdW90ZSIgc3R5bGU9Im1hcmdpbjowcHggMHB4IDBw
eCAwLjhleDtib3JkZXItbGVmdDoxcHggc29saWQgcmdiKDIwNCwyMDQsMjA0KTtwYWRkaW5nLWxl
ZnQ6MWV4Ij5IaSw8YnI+DQo8YnI+DQpJbiBVSEQgeW91IGZpbmQgOjxicj4NCjxicj4NCsKgIMKg
IHZvaWQgc2V0X3RpbWVfbmV4dF9wcHMoY29uc3QgdWhkOjp0aW1lX3NwZWNfdCAmYW1wO3RpbWUp
ezxicj4NCsKgIMKgIMKgIMKgIGNvbnN0IHVpbnQ2NF90IHRpY2tzID0gdGltZS50b190aWNrcyhf
dGlja19yYXRlKTs8YnI+DQrCoCDCoCDCoCDCoCBfaWZhY2UtJmd0O3Bva2UzMihSRUdfVElNRTY0
X1RJQ0tTX0xPLCB1aW50MzJfdCh0aWNrcyAmZ3Q7Jmd0OyAwKSk7PGJyPg0KwqAgwqAgwqAgwqAg
X2lmYWNlLSZndDtwb2tlMzIoUkVHX1RJTUU2NF9JTU0sIEZMQUdfVElNRTY0X0xBVENIX05FWFRf
UFBTKTs8YnI+DQrCoCDCoCDCoCDCoCBfaWZhY2UtJmd0O3Bva2UzMihSRUdfVElNRTY0X1RJQ0tT
X0hJLCB1aW50MzJfdCh0aWNrcyAmZ3Q7Jmd0OyAzMikpOzxicj4NCi8vbGF0Y2hlcyBhbGwgMzxi
cj4NCsKgIMKgIH08YnI+DQo8YnI+DQp3aXRoIHNlZW1pbmdseSB0aGUgd3JpdGUgb2YgdGhlICYj
Mzk7SEkmIzM5OyBwYXJ0IGJlaW5nIHRoZSB0cmlnZ2VyIHBvaW50Ljxicj4NCjxicj4NCkluIHRo
ZSBGUEdBIGNvZGUgKHRpbWVrZWVwZXIudikgeW91IGhhdmUgOjxicj4NCjxicj4NCnNldHRpbmdf
cmVnICMoLm15X2FkZHIoU1JfVElNRV9DVFJMKSwgLndpZHRoKDMpKSBzcl9jdHJsPGJyPg0KKC5j
bGsoY2xrKSwgLnJzdChyZXNldCksIC5zdHJvYmUoc2V0X3N0YiksIC5hZGRyKHNldF9hZGRyKSwg
LmluKHNldF9kYXRhKSw8YnI+DQoub3V0KHtzZXRfdGltZV9zeW5jLCBzZXRfdGltZV9wcHMsIHNl
dF90aW1lX25vd30pLCAuY2hhbmdlZChjbWRfdHJpZ2dlcikpOzxicj4NCjxicj4NClNvIHRoZSAm
IzM5O2NtZF90cmlnZ2VyJiMzOTsgdGhhdCBzeW5jaHJvbml6ZXMgdGhlIGFjdGlvbiBpcyBvbiB0
aGUgJiMzOTtDVFJMJiMzOTs8YnI+DQooYWthIFJFR19USU1FNjRfSU1NKSByZWdpc3RlciBhbmQg
bm90IG9uIHRoZSBoaSBwYXJ0IG9mIHRoZSB0aW1lLjxicj4NCjxicj4NCjxicj4NClRCSCBJJiMz
OTttIG5vdCBldmVuIHN1cmUgaG93IHNldF90aW1lX25vdyB3b3JrcyBhdCBhbGwgLi4uIGl0IGhh
cyB0aGU8YnI+DQpzYW1lIGlzc3VlIGFuZCBBRkFJQ1QgaXQgd291bGQgYWx3YXlzIGVuZCB1cCB1
c2luZyB0aGUgcHJldmlvdXMgdmFsdWU8YnI+DQpvZiB0aGUgJiMzOTtoaSYjMzk7IHJlZ2lzdGVy
Li4uPGJyPg0KPGJyPg0KQW0gSSBtaXNzaW5nIHNvbWV0aGluZyBoZXJlID88YnI+DQo8YnI+DQpD
aGVlcnMsPGJyPg0KPGJyPg0KwqAgwqAgU3lsdmFpbiBNdW5hdXQ8YnI+DQo8YnI+DQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXzxicj4NClVTUlAtdXNlcnMg
bWFpbGluZyBsaXN0PGJyPg0KPGEgaHJlZj0ibWFpbHRvOlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMu
Y29tIiB0YXJnZXQ9Il9ibGFuayI+VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb208L2E+PGJyPg0K
PGEgaHJlZj0iaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNl
cnNfbGlzdHMuZXR0dXMuY29tIiByZWw9Im5vcmVmZXJyZXIiIHRhcmdldD0iX2JsYW5rIj5odHRw
Oi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1
cy5jb208L2E+PGJyPg0KPC9ibG9ja3F1b3RlPjwvZGl2Pg0K
--00000000000072b4f205add80c28--


--===============0378143186255298394==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0378143186255298394==--

