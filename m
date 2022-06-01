Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AE77353AD1C
	for <lists+usrp-users@lfdr.de>; Wed,  1 Jun 2022 20:55:24 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4E7AE3847CA
	for <lists+usrp-users@lfdr.de>; Wed,  1 Jun 2022 14:55:23 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1654109723; bh=IeNHCpeqYCddF48UFo5az6MxCrB1fhpGbGE1DJuqF6o=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=CXvFiiBzNVdQUM5ioZzrF8VHul75HjqoV7Agcn8YL9hBCfN2a8gr5hevX+Bo7MF8K
	 A2IN1TZcsvC62CzklAnNBhhTHHuTiWHq/btfJpzCJRXLsNLO+KtGnIJjOIRyqMYrbL
	 afjE9e8qXxcC+Z/Eaugyw5zbb65syZ28kokij/ZqNLyZR7ObUbMOnT+KpsJ2mJFYFH
	 4Iyc5AVHSTF3FBfIbm1kfaxi/KtOs7ROt/RRdQ8kJPZ1gMJWf6zNhI8gVY1ztPCc25
	 yNa51ib9riwbiTofO7kOIQgqtmQ2lrAqL3ahNdtFaE1H7pkJ/8/4NoRMDFuOeD7h1/
	 O7xvAf6XWDEKQ==
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 8E9C938463F
	for <usrp-users@lists.ettus.com>; Wed,  1 Jun 2022 14:54:21 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="CoOjvHed";
	dkim-atps=neutral
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-30c2f288f13so28805187b3.7
        for <usrp-users@lists.ettus.com>; Wed, 01 Jun 2022 11:54:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=G/ut5wQ4DIUc/Es9KNYkPysoR9rS8yayCYYiBnKJpo0=;
        b=CoOjvHed4UsRJ4kyBfv4IK3RXoqY1gkokCBAXcsKduOCgI51fqNJBqKivwxdBb1qRR
         DhlcAyA22bnTrZfF8Qv78pf99C4cOMYIinrYXVPUP5Y9O9KfxyMzLia+T9bh6/ipi3h0
         LvRDjvRpSIPuU+R923K5VURQIxrwif7OF2J/fdtf9N0NSb/KdXpEASXvhnWuueSfu4CB
         QXYP/isC0K/PZ2vlpdYTK+wrFp9sG+PAYgiZdVp0EucbytmUxbFKjLL7YESfQ73eS9kt
         lIBjBW+6KJ/El4s2E0GpE2x6brUG9D8dkiWSo5lGfVgf+dfhgSVBUIEyxwWMsAfUfsQq
         EHTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=G/ut5wQ4DIUc/Es9KNYkPysoR9rS8yayCYYiBnKJpo0=;
        b=E8Vu3WsLTqpeTlwupO+KNBGREe2QhIw0befRfCQwYsHmnSBDIRWu9xmzPaPzDFhPV5
         SBUch0JeTjKtNRFurKk0zo/sFxyUlh6swaCgtbvwm4mpGOMl2V7ZSVCBE9FMHQTxZ8Fa
         YbYo7iL51fYj71DxNqtiso0/ZBTvivxOu8DbATo2E0+QMB79C0PCRHy966ZwyVw3AxzN
         LbNzpSHO2H+GsMC1fwWdKKTctZ5aiY4Aq6wdX7UCswgNkjlNSS9cYpbAz8K2v8MEgWVe
         +kc3rTsOLd91fCLcaADgX09tONLzw4mGVv4kEJhQE0rhj7QQ4tdh6EAMEp6XjH6+pxjN
         KgEw==
X-Gm-Message-State: AOAM531d5kFRPFBkxmxnyy0KchHwx3AxNndshOH5Py0N9lb3XppcHXe9
	64RAn4v+Q9ddXoodsNsCG0FZNnFGYSPFXYAfXI/zgzQiVE3mXA==
X-Google-Smtp-Source: ABdhPJyXcg+O5dD/0FR0kWxdLFfkf+x1nhTaMsAHkbZe9IkD52svp1Gv+7rWM6WbZNqVhLcUYQeqaStsXFg8WUL44tU=
X-Received: by 2002:a0d:ffc3:0:b0:2eb:2327:3361 with SMTP id
 p186-20020a0dffc3000000b002eb23273361mr1104814ywf.36.1654109660944; Wed, 01
 Jun 2022 11:54:20 -0700 (PDT)
MIME-Version: 1.0
References: <CAG16vQUahtZ8Ca0CSgu_dacdwPMX9grDjs93+jzUjn8ABNJi9g@mail.gmail.com>
 <CAFche=jqbjpNuErU0YJOkE8csynOtfVmvUEvfPGmUQEEbJLRkg@mail.gmail.com> <CAG16vQWz5_BH4BNP-cVtXx=e22VTDb3QU+76-epzs-nd5TCaXg@mail.gmail.com>
In-Reply-To: <CAG16vQWz5_BH4BNP-cVtXx=e22VTDb3QU+76-epzs-nd5TCaXg@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Wed, 1 Jun 2022 13:54:05 -0500
Message-ID: <CAFche=iqTfiZJbaJKiQqjz2-tKB_A7ifbZVrA6GksRK6UiuiPw@mail.gmail.com>
To: =?UTF-8?B?TWFyaWEgTXXDsW96?= <mamuki92@gmail.com>
Message-ID-Hash: CNUJJ3DNSU6A6JWBFUW7UFFBELTJZ4BU
X-Message-ID-Hash: CNUJJ3DNSU6A6JWBFUW7UFFBELTJZ4BU
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Select lower clk in X310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CNUJJ3DNSU6A6JWBFUW7UFFBELTJZ4BU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0383861673194947198=="

--===============0383861673194947198==
Content-Type: multipart/alternative; boundary="000000000000c2b00405e0676a85"

--000000000000c2b00405e0676a85
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes, bus_clk is connected to rfnoc_chdr_clk in the RFNoC framework.So in
the YAML it is called "rfnoc_chdr".

Wade

On Wed, Jun 1, 2022 at 3:41 AM Maria Mu=C3=B1oz <mamuki92@gmail.com> wrote:

> Hi Wade,
>
> Thanks for the answer. So "rfnoc_chdr" in the yml file is "bus_clk"?
> In the report timing summary, I see many clocks but there is no
> "rfnoc_chdr", maybe is linked somewhere else in the framework?:
>
> -------------------------------------------------------------------------=
-----------------------
> | Clock Summary
> | -------------
>
> -------------------------------------------------------------------------=
-----------------------
>
> Clock
>
>      Waveform(ns)    Period(ns)   Frequency(MHz)
> -----
>
>          ------------               ----------      --------------
> DB0_ADC_DCLK
>
>  {0.000 2.500}        5.000           200.000
> DB1_ADC_DCLK
>
>  {0.000 2.500}        5.000           200.000
> ETH_CLK
>
>  {0.000 4.000}        8.000           125.000
> FPGA_125MHz_CLK
>                                                                    {0.000
> 4.000}        8.000           125.000
>   bus_clk
>
>      {0.000 2.667}        5.333           187.500
>   bus_clk_div2
>
>   {0.000 5.333}        10.667          93.750
>   ce_clk
>
>        {0.000 2.333}        4.667           214.286
>   clkfbout_pcie_clk_gen
>
> {0.000 4.000}        8.000           125.000
>   ioport2_clk
>
>     {0.000 4.000}        8.000           125.000
>     IoPort2Wrapperx/TxClockGenx/TxUseMmcm.ClkFbOutMmcm
>                                       {0.000 4.000}        8.000
> 125.000
>     IoPort2Wrapperx/TxClockGenx/TxUseMmcm.ClkOut0Mmcm
>                                       {0.000 2.000}        4.000
> 250.000
>       IoTxClock
>
>    {0.000 2.000}        4.000           250.000
>     IoPort2Wrapperx/TxClockGenx/TxUseMmcm.ClkOut1Mmcm
>                                       {0.000 4.000}        8.000
> 125.000
>   ioport2_idelay_ref_clk
>
> {0.000 2.500}        5.000           200.000
>   rio40_clk
>
>      {0.000 12.500}       25.000          40.000
> FPGA_CLK
>
>  {0.000 2.500}        5.000           200.000
>   CLK_OUT3_radio_clk_gen
>                                                                    {0.417
> 1.667}        2.500           400.000
>     DB0_DAC_DCI
>
>  {0.417 1.667}        2.500           400.000
>     DB1_DAC_DCI
>
>  {0.417 1.667}        2.500           400.000
>   clkfbout_radio_clk_gen
>
> {0.000 2.500}        5.000           200.000
>   radio_clk
>
>       {0.000 2.500}        5.000           200.000
>   radio_clk_2x
>
>     {-0.312 0.937}       2.500           400.000
>
> How do I know which clock of those is going to my design?
>
> Kind Regards,
> Maria
>
> El mar, 31 may 2022 a las 22:30, Wade Fife (<wade.fife@ettus.com>)
> escribi=C3=B3:
>
>> Hi Maria,
>>
>> You have the right idea. You should be able to change the srcport from
>> "ce" to "rfnoc_chdr" in the line for your block in the clk_domains secti=
on.
>> If that doesn't work, share your YML file and maybe someone can spot the
>> problem.
>>
>> Wade
>>
>> On Tue, May 31, 2022 at 3:47 AM Maria Mu=C3=B1oz <mamuki92@gmail.com> wr=
ote:
>>
>>> Hi all,
>>>
>>> I have generated a custom RFNoC block with rfnocmodtool to be
>>> implemented on X310.
>>> I am using UHD 4.0. toolchain to synthesize it, but I cannot meet timin=
g
>>> with the clock selected (in /icores/yml file, I have select "ce" as the=
 clk
>>> source for my block).
>>> I see that "ce" clock for X310 is 214 MHz and I wondered if I could use
>>> a slower clock for my "ce" from the interface. In the clock reports, th=
ere
>>> is a "bus_clk" of 187.5 MHz, which I think is suitable for my design, b=
ut
>>> if I select "bus_clk" as clk source for my block in the yml file it giv=
es
>>> an error message:
>>> [ERR] 1 unresolved clk domain(s)
>>> [ERR]     block0:ce
>>> [ERR] Please specify the clock(s) to connect
>>>
>>> It is possible to use "bus_clk" as the clock source for my block? Which
>>> files should I modify to use this clock?
>>>
>>> Kind Regards,
>>> Maria
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>

--000000000000c2b00405e0676a85
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+PGRpdj5ZZXMsIGJ1c19jbGsgaXMgY29ubmVjdGVkIHRvIHJmbm9jX2No
ZHJfY2xrIGluIHRoZSBSRk5vQyBmcmFtZXdvcmsuU28gaW4gdGhlIFlBTUwgaXQgaXMgY2FsbGVk
ICZxdW90O3Jmbm9jX2NoZHImcXVvdDsuPGJyPjwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXY+V2Fk
ZTxicj48L2Rpdj48L2Rpdj48YnI+PGRpdiBjbGFzcz0iZ21haWxfcXVvdGUiPjxkaXYgZGlyPSJs
dHIiIGNsYXNzPSJnbWFpbF9hdHRyIj5PbiBXZWQsIEp1biAxLCAyMDIyIGF0IDM6NDEgQU0gTWFy
aWEgTXXDsW96ICZsdDs8YSBocmVmPSJtYWlsdG86bWFtdWtpOTJAZ21haWwuY29tIj5tYW11a2k5
MkBnbWFpbC5jb208L2E+Jmd0OyB3cm90ZTo8YnI+PC9kaXY+PGJsb2NrcXVvdGUgY2xhc3M9Imdt
YWlsX3F1b3RlIiBzdHlsZT0ibWFyZ2luOjBweCAwcHggMHB4IDAuOGV4O2JvcmRlci1sZWZ0OjFw
eCBzb2xpZCByZ2IoMjA0LDIwNCwyMDQpO3BhZGRpbmctbGVmdDoxZXgiPjxkaXYgZGlyPSJsdHIi
PkhpIFdhZGUsPGRpdj48YnI+PC9kaXY+PGRpdj5UaGFua3MgZm9yIHRoZSBhbnN3ZXIuIFNvICZx
dW90O3Jmbm9jX2NoZHImcXVvdDsgaW4gdGhlIHltbCBmaWxlIGlzICZxdW90O2J1c19jbGsmcXVv
dDs/wqA8L2Rpdj48ZGl2PkluIHRoZSByZXBvcnQgdGltaW5nIHN1bW1hcnksIEkgc2VlIG1hbnkg
Y2xvY2tzIGJ1dCB0aGVyZSBpcyBubyAmcXVvdDtyZm5vY19jaGRyJnF1b3Q7LMKgbWF5YmUgaXMg
bGlua2VkIHNvbWV3aGVyZSBlbHNlIGluIHRoZSBmcmFtZXdvcms/OjwvZGl2PjxkaXY+LS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tPGJyPnwgQ2xvY2sgU3VtbWFyeTxicj58
IC0tLS0tLS0tLS0tLS08YnI+LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
PGJyPjxicj5DbG9ja8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgV2F2ZWZvcm0obnMpwqAgwqAgUGVyaW9kKG5zKcKgIMKgRnJlcXVlbmN5KE1I
eik8YnI+LS0tLS0gwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAtLS0tLS0tLS0tLS3CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoC0tLS0tLS0t
LS0gwqAgwqAgwqAtLS0tLS0tLS0tLS0tLTxicj5EQjBfQURDX0RDTEvCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoHswLjAwMCAyLjUwMH0gwqAgwqAgwqAgwqA1LjAwMCDCoCDCoCDCoCDCoCDC
oCAyMDAuMDAwIMKgIMKgIMKgIMKgIDxicj5EQjFfQURDX0RDTEvCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoHswLjAwMCAyLjUwMH0gwqAgwqAgwqAgwqA1LjAwMCDCoCDCoCDCoCDCoCDCoCAy
MDAuMDAwIMKgIMKgIMKgIMKgIDxicj5FVEhfQ0xLwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqB7MC4wMDAgNC4wMDB9IMKgIMKgIMKgIMKgOC4wMDAgwqAgwqAg
wqAgwqAgwqAgMTI1LjAwMCDCoCDCoCDCoCDCoCA8YnI+RlBHQV8xMjVNSHpfQ0xLwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqB7MC4wMDAgNC4wMDB9IMKgIMKgIMKgIMKgOC4wMDAgwqAgwqAgwqAgwqAgwqAg
MTI1LjAwMCDCoCDCoCDCoCDCoCA8YnI+wqAgYnVzX2Nsa8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgezAuMDAwIDIuNjY3fSDCoCDCoCDCoCDCoDUuMzMz
IMKgIMKgIMKgIMKgIMKgIDE4Ny41MDAgwqAgwqAgwqAgwqAgPGJyPsKgIGJ1c19jbGtfZGl2MsKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIHswLjAwMCA1LjMzM30gwqAgwqAgwqAg
wqAxMC42NjcgwqAgwqAgwqAgwqAgwqA5My43NTAgwqAgwqAgwqAgwqAgwqA8YnI+wqAgY2VfY2xr
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqB7MC4w
MDAgMi4zMzN9IMKgIMKgIMKgIMKgNC42NjcgwqAgwqAgwqAgwqAgwqAgMjE0LjI4NiDCoCDCoCDC
oCDCoCA8YnI+wqAgY2xrZmJvdXRfcGNpZV9jbGtfZ2VuwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgezAuMDAwIDQu
MDAwfSDCoCDCoCDCoCDCoDguMDAwIMKgIMKgIMKgIMKgIMKgIDEyNS4wMDAgwqAgwqAgwqAgwqAg
PGJyPsKgIGlvcG9ydDJfY2xrwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgezAuMDAwIDQuMDAwfSDCoCDCoCDCoCDCoDguMDAwIMKgIMKgIMKgIMKgIMKgIDEyNS4wMDAg
wqAgwqAgwqAgwqAgPGJyPsKgIMKgIElvUG9ydDJXcmFwcGVyeC9UeENsb2NrR2VueC9UeFVzZU1t
Y20uQ2xrRmJPdXRNbWNtwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgezAuMDAwIDQuMDAw
fSDCoCDCoCDCoCDCoDguMDAwIMKgIMKgIMKgIMKgIMKgIDEyNS4wMDAgwqAgwqAgwqAgwqAgPGJy
PsKgIMKgIElvUG9ydDJXcmFwcGVyeC9UeENsb2NrR2VueC9UeFVzZU1tY20uQ2xrT3V0ME1tY23C
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCB7MC4wMDAgMi4wMDB9IMKgIMKgIMKgIMKg
NC4wMDAgwqAgwqAgwqAgwqAgwqAgMjUwLjAwMCDCoCDCoCDCoCDCoCA8YnI+wqAgwqAgwqAgSW9U
eENsb2NrwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqB7MC4wMDAgMi4wMDB9
IMKgIMKgIMKgIMKgNC4wMDAgwqAgwqAgwqAgwqAgwqAgMjUwLjAwMCDCoCDCoCDCoCDCoCA8YnI+
wqAgwqAgSW9Qb3J0MldyYXBwZXJ4L1R4Q2xvY2tHZW54L1R4VXNlTW1jbS5DbGtPdXQxTW1jbcKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIHswLjAwMCA0LjAwMH0gwqAgwqAgwqAgwqA4
LjAwMCDCoCDCoCDCoCDCoCDCoCAxMjUuMDAwIMKgIMKgIMKgIMKgIDxicj7CoCBpb3BvcnQyX2lk
ZWxheV9yZWZfY2xrwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgezAuMDAwIDIuNTAwfSDCoCDCoCDCoCDCoDUuMDAw
IMKgIMKgIMKgIMKgIMKgIDIwMC4wMDAgwqAgwqAgwqAgwqAgPGJyPsKgIHJpbzQwX2Nsa8KgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgezAuMDAwIDEyLjUwMH0g
wqAgwqAgwqAgMjUuMDAwIMKgIMKgIMKgIMKgIMKgNDAuMDAwIMKgIMKgIMKgIMKgIMKgPGJyPkZQ
R0FfQ0xLwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqB7MC4wMDAg
Mi41MDB9IMKgIMKgIMKgIMKgNS4wMDAgwqAgwqAgwqAgwqAgwqAgMjAwLjAwMCDCoCDCoCDCoCDC
oCA8YnI+wqAgQ0xLX09VVDNfcmFkaW9fY2xrX2dlbsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgezAuNDE3IDEuNjY3fSDCoCDCoCDC
oCDCoDIuNTAwIMKgIMKgIMKgIMKgIMKgIDQwMC4wMDAgwqAgwqAgwqAgwqAgPGJyPsKgIMKgIERC
MF9EQUNfRENJwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqB7MC40MTcgMS42Njd9IMKgIMKg
IMKgIMKgMi41MDAgwqAgwqAgwqAgwqAgwqAgNDAwLjAwMCDCoCDCoCDCoCDCoCA8YnI+wqAgwqAg
REIxX0RBQ19EQ0nCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHswLjQxNyAxLjY2N30gwqAg
wqAgwqAgwqAyLjUwMCDCoCDCoCDCoCDCoCDCoCA0MDAuMDAwIMKgIMKgIMKgIMKgIDxicj7CoCBj
bGtmYm91dF9yYWRpb19jbGtfZ2VuwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgezAuMDAwIDIuNTAwfSDCoCDCoCDC
oCDCoDUuMDAwIMKgIMKgIMKgIMKgIMKgIDIwMC4wMDAgwqAgwqAgwqAgwqAgPGJyPsKgIHJhZGlv
X2Nsa8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIHswLjAw
MCAyLjUwMH0gwqAgwqAgwqAgwqA1LjAwMCDCoCDCoCDCoCDCoCDCoCAyMDAuMDAwIMKgIMKgIMKg
IMKgIDxicj7CoCByYWRpb19jbGtfMnjCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCB7LTAuMzEyIDAuOTM3fSDCoCDCoCDCoCAyLjUwMCDCoCDCoCDCoCDCoCDCoCA0MDAuMDAw
wqAgwqAgwqAgwqAgwqA8YnI+PC9kaXY+PGRpdj48YnI+PC9kaXY+PGRpdj5Ib3cgZG8gSSBrbm93
wqB3aGljaCBjbG9ja8Kgb2YgdGhvc2UgaXMgZ29pbmcgdG8gbXkgZGVzaWduPzwvZGl2PjxkaXY+
PGJyPjwvZGl2PjxkaXY+S2luZCBSZWdhcmRzLDwvZGl2PjxkaXY+TWFyaWE8L2Rpdj48L2Rpdj48
YnI+PGRpdiBjbGFzcz0iZ21haWxfcXVvdGUiPjxkaXYgZGlyPSJsdHIiIGNsYXNzPSJnbWFpbF9h
dHRyIj5FbCBtYXIsIDMxIG1heSAyMDIyIGEgbGFzIDIyOjMwLCBXYWRlIEZpZmUgKCZsdDs8YSBo
cmVmPSJtYWlsdG86d2FkZS5maWZlQGV0dHVzLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPndhZGUuZmlm
ZUBldHR1cy5jb208L2E+Jmd0OykgZXNjcmliacOzOjxicj48L2Rpdj48YmxvY2txdW90ZSBjbGFz
cz0iZ21haWxfcXVvdGUiIHN0eWxlPSJtYXJnaW46MHB4IDBweCAwcHggMC44ZXg7Ym9yZGVyLWxl
ZnQ6MXB4IHNvbGlkIHJnYigyMDQsMjA0LDIwNCk7cGFkZGluZy1sZWZ0OjFleCI+PGRpdiBkaXI9
Imx0ciI+PGRpdj5IaSBNYXJpYSw8L2Rpdj48ZGl2Pjxicj48L2Rpdj48ZGl2PllvdSBoYXZlIHRo
ZSByaWdodCBpZGVhLiBZb3Ugc2hvdWxkIGJlIGFibGUgdG8gY2hhbmdlIHRoZSBzcmNwb3J0IGZy
b20gJnF1b3Q7Y2UmcXVvdDsgdG8gJnF1b3Q7cmZub2NfY2hkciZxdW90OyBpbiB0aGUgbGluZSBm
b3IgeW91ciBibG9jayBpbiB0aGUgY2xrX2RvbWFpbnMgc2VjdGlvbi4gSWYgdGhhdCBkb2VzbiYj
Mzk7dCB3b3JrLCBzaGFyZSB5b3VyIFlNTCBmaWxlIGFuZCBtYXliZSBzb21lb25lIGNhbiBzcG90
IHRoZSBwcm9ibGVtLjwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXY+V2FkZTxicj48L2Rpdj48L2Rp
dj48YnI+PGRpdiBjbGFzcz0iZ21haWxfcXVvdGUiPjxkaXYgZGlyPSJsdHIiIGNsYXNzPSJnbWFp
bF9hdHRyIj5PbiBUdWUsIE1heSAzMSwgMjAyMiBhdCAzOjQ3IEFNIE1hcmlhIE11w7FveiAmbHQ7
PGEgaHJlZj0ibWFpbHRvOm1hbXVraTkyQGdtYWlsLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPm1hbXVr
aTkyQGdtYWlsLmNvbTwvYT4mZ3Q7IHdyb3RlOjxicj48L2Rpdj48YmxvY2txdW90ZSBjbGFzcz0i
Z21haWxfcXVvdGUiIHN0eWxlPSJtYXJnaW46MHB4IDBweCAwcHggMC44ZXg7Ym9yZGVyLWxlZnQ6
MXB4IHNvbGlkIHJnYigyMDQsMjA0LDIwNCk7cGFkZGluZy1sZWZ0OjFleCI+PGRpdiBkaXI9Imx0
ciI+SGkgYWxsLDxicj48ZGl2Pjxicj48L2Rpdj48ZGl2PkkgaGF2ZSBnZW5lcmF0ZWQgYSBjdXN0
b20gUkZOb0MgYmxvY2sgd2l0aCByZm5vY21vZHRvb2wgdG8gYmUgaW1wbGVtZW50ZWQgb24gWDMx
MC48L2Rpdj48ZGl2PkkgYW0gdXNpbmcgVUhEIDQuMC4gdG9vbGNoYWluIHRvIHN5bnRoZXNpemUg
aXQsIGJ1dCBJIGNhbm5vdCBtZWV0IHRpbWluZyB3aXRoIHRoZSBjbG9jayBzZWxlY3RlZCAoaW4g
L2ljb3Jlcy95bWwgZmlsZSwgSSBoYXZlIHNlbGVjdCAmcXVvdDtjZSZxdW90OyBhcyB0aGUgY2xr
IHNvdXJjZSBmb3IgbXkgYmxvY2spLjwvZGl2PjxkaXY+SSBzZWUgdGhhdCAmcXVvdDtjZSZxdW90
OyBjbG9jayBmb3IgWDMxMCBpcyAyMTQgTUh6IGFuZCBJIHdvbmRlcmVkIGlmIEkgY291bGQgdXNl
IGEgc2xvd2VyIGNsb2NrIGZvciBteSAmcXVvdDtjZSZxdW90OyBmcm9tIHRoZSBpbnRlcmZhY2Uu
IEluIHRoZSBjbG9jayByZXBvcnRzLCB0aGVyZSBpcyBhICZxdW90O2J1c19jbGsmcXVvdDsgb2Yg
MTg3LjUgTUh6LCB3aGljaCBJIHRoaW5rIGlzIHN1aXRhYmxlIGZvciBteSBkZXNpZ24sIGJ1dCBp
ZiBJIHNlbGVjdCAmcXVvdDtidXNfY2xrJnF1b3Q7IGFzIGNsayBzb3VyY2UgZm9yIG15IGJsb2Nr
IGluIHRoZSB5bWwgZmlsZSBpdCBnaXZlcyBhbiBlcnJvciBtZXNzYWdlOjxicj5bRVJSXSAxIHVu
cmVzb2x2ZWQgY2xrIGRvbWFpbihzKTxicj5bRVJSXSDCoCDCoCBibG9jazA6Y2U8YnI+W0VSUl0g
UGxlYXNlIHNwZWNpZnkgdGhlIGNsb2NrKHMpIHRvIGNvbm5lY3Q8YnI+PC9kaXY+PGRpdj48YnI+
PC9kaXY+PGRpdj5JdCBpcyBwb3NzaWJsZSB0byB1c2UgJnF1b3Q7YnVzX2NsayZxdW90OyBhcyB0
aGUgY2xvY2sgc291cmNlIGZvciBteSBibG9jaz8gV2hpY2ggZmlsZXMgc2hvdWxkIEkgbW9kaWZ5
IHRvIHVzZSB0aGlzIGNsb2NrPzwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXY+S2luZCBSZWdhcmRz
LDwvZGl2PjxkaXY+TWFyaWE8L2Rpdj48L2Rpdj4NCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fPGJyPg0KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gPGEg
aHJlZj0ibWFpbHRvOnVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIiB0YXJnZXQ9Il9ibGFuayI+
dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb208L2E+PGJyPg0KVG8gdW5zdWJzY3JpYmUgc2VuZCBh
biBlbWFpbCB0byA8YSBocmVmPSJtYWlsdG86dXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5j
b20iIHRhcmdldD0iX2JsYW5rIj51c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbTwvYT48
YnI+DQo8L2Jsb2NrcXVvdGU+PC9kaXY+DQo8L2Jsb2NrcXVvdGU+PC9kaXY+DQo8L2Jsb2NrcXVv
dGU+PC9kaXY+DQo=
--000000000000c2b00405e0676a85--

--===============0383861673194947198==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0383861673194947198==--
