Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DDF6153C4BE
	for <lists+usrp-users@lfdr.de>; Fri,  3 Jun 2022 08:15:29 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7506B38490F
	for <lists+usrp-users@lfdr.de>; Fri,  3 Jun 2022 02:15:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1654236928; bh=jy+5+OxJjGPbBGEOcXBRSLz13/HIlimunTCBeFnblMs=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=nA5pB7RDthr9BZ6MTV11xZU1qZawdMoAc8uI3L0g2kwPenoE1qSylrWah10lbIBNL
	 kGJp2lBvI6oPG2d4Sv3RV12uFf840XEuCu1dBVbKd+TAb6vj5faOqee5XdByD2+vpb
	 v0hpQkKKi7cq+VGTxuNrzu4/Uc7R8yO/tfTn5po1JIYb3kACSVPSNiDp1Q71/cPXUT
	 QNdrPFZEHbDrERB/jpiZXdEJ9WsZM9nQfA4C9jJq/Q4SaDThNLS3uwH1m92BS0EV/c
	 vgNoiEUh0ST0y82IP1PBssAIyUsycxCP+/BWOz4k+vk73HLvYva2tWYCIIX1sGs8m4
	 pi20+Rw15n0Tg==
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 46BC9384876
	for <usrp-users@lists.ettus.com>; Fri,  3 Jun 2022 02:14:25 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="FLHHOQ+i";
	dkim-atps=neutral
Received: by mail-ed1-f41.google.com with SMTP id v25so8858097eda.6
        for <usrp-users@lists.ettus.com>; Thu, 02 Jun 2022 23:14:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=KJrtw1cmRSQHqb80d9B9ZlOI9KrQiVbVnwg5+kJKWC8=;
        b=FLHHOQ+iOMO5NqbPR5/47crTFP1+dy2Zz1d+UFAi9fJTxqjXkZq8DnMMblcqn0uStJ
         r/DidU+c16+rFI3P025SIOGESg+DjyBYeV7MnBPtkNaiCBKlmXzzirYDueYQ6Vk3hJPS
         XTyPwFn2B5Naa6ZorOb5jgLI2PHynhef4FcRjxHCeZuo4gXxo9DxARiQIp8FTvsjWksA
         4+bzKNTiEQPCIXjaY4i4CatIqvF6H311JwTEeU5+CwvaE/Z9+F9h5cylxZD7DbV5o5iO
         nMSLY5Pvat62tdpO/hZ7A/1MD0/xYbYYfWg+angyms6aHH/ZlVclGr5Nmev41gTXzcLI
         Zb5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=KJrtw1cmRSQHqb80d9B9ZlOI9KrQiVbVnwg5+kJKWC8=;
        b=2TmO+tljCAVtt5b1eUDye/NTxqofJ0lS8EtlLnYAEggd0UhZ9KHb7YrMNo3am3llOU
         r2nlj+RqN/u/QdxLy4XJOWSNc8bsIx2iSb6y+WxhAUV4pr3WZUmJo0uBj6vKLVo1hu3R
         lLaMZPONb8qUPwhm6wjdvQcThJmIWOwuUIAGWqwRRNdymkyAKcKgF2n6wBxIDp1cO+EW
         wtwSuCmabX2oHMuO0JYYU8x/JU8rsxAH1pN0A219HZ8ddrYON8m5l30tRzH1/MC7OKRh
         aSIxht81aCwJ2P4NmdyFV9a3xF8okJoZqcHDI43BAqxKliHvZsAiP4w6jFqDz5VXfPuH
         MOhw==
X-Gm-Message-State: AOAM533OWJ2LeHFro/otKTSgynczzeDvP5gw8jTTvea2Yspuv8s66rcy
	5OzvfTs50VBNm7q7uRs6rRg8sw3Iy6j49BZ6C884eoNl
X-Google-Smtp-Source: ABdhPJy6vpTKWKZTRNHU5YgFZxBBvtHxBbQcTzJWAbEV9Inzuyfi3A7nboBFTHVcKzn46aamJsxYyNLZ5S6mab2WXPM=
X-Received: by 2002:aa7:c508:0:b0:42d:cc6b:df80 with SMTP id
 o8-20020aa7c508000000b0042dcc6bdf80mr8934732edq.393.1654236864119; Thu, 02
 Jun 2022 23:14:24 -0700 (PDT)
MIME-Version: 1.0
References: <CAG16vQUahtZ8Ca0CSgu_dacdwPMX9grDjs93+jzUjn8ABNJi9g@mail.gmail.com>
 <CAFche=jqbjpNuErU0YJOkE8csynOtfVmvUEvfPGmUQEEbJLRkg@mail.gmail.com>
 <CAG16vQWz5_BH4BNP-cVtXx=e22VTDb3QU+76-epzs-nd5TCaXg@mail.gmail.com> <CAFche=iqTfiZJbaJKiQqjz2-tKB_A7ifbZVrA6GksRK6UiuiPw@mail.gmail.com>
In-Reply-To: <CAFche=iqTfiZJbaJKiQqjz2-tKB_A7ifbZVrA6GksRK6UiuiPw@mail.gmail.com>
From: =?UTF-8?B?TWFyaWEgTXXDsW96?= <mamuki92@gmail.com>
Date: Fri, 3 Jun 2022 08:14:11 +0200
Message-ID: <CAG16vQWA0xcRkQd-t3b0oUd-XwcQ1H5=0K5e_z=1-ijOQ3X9dw@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
Message-ID-Hash: WG7C3YZMQGCRKGCRLBWAPLICDLGSRDVM
X-Message-ID-Hash: WG7C3YZMQGCRKGCRLBWAPLICDLGSRDVM
X-MailFrom: mamuki92@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Select lower clk in X310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WG7C3YZMQGCRKGCRLBWAPLICDLGSRDVM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6664403177186836633=="

--===============6664403177186836633==
Content-Type: multipart/alternative; boundary="000000000000a906c505e0850853"

--000000000000a906c505e0850853
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Ok, that works. I have seen the maximum and minimum paths of bus_clk in my
timing reports and it seems that bus_clk's paths include my block.
Thanks again!

Kind regards,
Maria

El mi=C3=A9, 1 jun 2022 a las 20:54, Wade Fife (<wade.fife@ettus.com>) escr=
ibi=C3=B3:

> Yes, bus_clk is connected to rfnoc_chdr_clk in the RFNoC framework.So in
> the YAML it is called "rfnoc_chdr".
>
> Wade
>
> On Wed, Jun 1, 2022 at 3:41 AM Maria Mu=C3=B1oz <mamuki92@gmail.com> wrot=
e:
>
>> Hi Wade,
>>
>> Thanks for the answer. So "rfnoc_chdr" in the yml file is "bus_clk"?
>> In the report timing summary, I see many clocks but there is no
>> "rfnoc_chdr", maybe is linked somewhere else in the framework?:
>>
>> ------------------------------------------------------------------------=
------------------------
>> | Clock Summary
>> | -------------
>>
>> ------------------------------------------------------------------------=
------------------------
>>
>> Clock
>>
>>        Waveform(ns)    Period(ns)   Frequency(MHz)
>> -----
>>
>>          ------------               ----------      --------------
>> DB0_ADC_DCLK
>>
>>  {0.000 2.500}        5.000           200.000
>> DB1_ADC_DCLK
>>
>>  {0.000 2.500}        5.000           200.000
>> ETH_CLK
>>
>>    {0.000 4.000}        8.000           125.000
>> FPGA_125MHz_CLK
>>                                                                      {0.=
000
>> 4.000}        8.000           125.000
>>   bus_clk
>>
>>        {0.000 2.667}        5.333           187.500
>>   bus_clk_div2
>>
>>   {0.000 5.333}        10.667          93.750
>>   ce_clk
>>
>>        {0.000 2.333}        4.667           214.286
>>   clkfbout_pcie_clk_gen
>>
>> {0.000 4.000}        8.000           125.000
>>   ioport2_clk
>>
>>       {0.000 4.000}        8.000           125.000
>>     IoPort2Wrapperx/TxClockGenx/TxUseMmcm.ClkFbOutMmcm
>>                                       {0.000 4.000}        8.000
>> 125.000
>>     IoPort2Wrapperx/TxClockGenx/TxUseMmcm.ClkOut0Mmcm
>>                                         {0.000 2.000}        4.000
>>   250.000
>>       IoTxClock
>>
>>      {0.000 2.000}        4.000           250.000
>>     IoPort2Wrapperx/TxClockGenx/TxUseMmcm.ClkOut1Mmcm
>>                                         {0.000 4.000}        8.000
>>   125.000
>>   ioport2_idelay_ref_clk
>>
>> {0.000 2.500}        5.000           200.000
>>   rio40_clk
>>
>>        {0.000 12.500}       25.000          40.000
>> FPGA_CLK
>>
>>  {0.000 2.500}        5.000           200.000
>>   CLK_OUT3_radio_clk_gen
>>                                                                    {0.41=
7
>> 1.667}        2.500           400.000
>>     DB0_DAC_DCI
>>
>>  {0.417 1.667}        2.500           400.000
>>     DB1_DAC_DCI
>>
>>  {0.417 1.667}        2.500           400.000
>>   clkfbout_radio_clk_gen
>>
>> {0.000 2.500}        5.000           200.000
>>   radio_clk
>>
>>         {0.000 2.500}        5.000           200.000
>>   radio_clk_2x
>>
>>     {-0.312 0.937}       2.500           400.000
>>
>> How do I know which clock of those is going to my design?
>>
>> Kind Regards,
>> Maria
>>
>> El mar, 31 may 2022 a las 22:30, Wade Fife (<wade.fife@ettus.com>)
>> escribi=C3=B3:
>>
>>> Hi Maria,
>>>
>>> You have the right idea. You should be able to change the srcport from
>>> "ce" to "rfnoc_chdr" in the line for your block in the clk_domains sect=
ion.
>>> If that doesn't work, share your YML file and maybe someone can spot th=
e
>>> problem.
>>>
>>> Wade
>>>
>>> On Tue, May 31, 2022 at 3:47 AM Maria Mu=C3=B1oz <mamuki92@gmail.com> w=
rote:
>>>
>>>> Hi all,
>>>>
>>>> I have generated a custom RFNoC block with rfnocmodtool to be
>>>> implemented on X310.
>>>> I am using UHD 4.0. toolchain to synthesize it, but I cannot meet
>>>> timing with the clock selected (in /icores/yml file, I have select "ce=
" as
>>>> the clk source for my block).
>>>> I see that "ce" clock for X310 is 214 MHz and I wondered if I could us=
e
>>>> a slower clock for my "ce" from the interface. In the clock reports, t=
here
>>>> is a "bus_clk" of 187.5 MHz, which I think is suitable for my design, =
but
>>>> if I select "bus_clk" as clk source for my block in the yml file it gi=
ves
>>>> an error message:
>>>> [ERR] 1 unresolved clk domain(s)
>>>> [ERR]     block0:ce
>>>> [ERR] Please specify the clock(s) to connect
>>>>
>>>> It is possible to use "bus_clk" as the clock source for my block? Whic=
h
>>>> files should I modify to use this clock?
>>>>
>>>> Kind Regards,
>>>> Maria
>>>> _______________________________________________
>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>
>>>

--000000000000a906c505e0850853
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+T2ssIHRoYXQgd29ya3MuIEkgaGF2ZSBzZWVuIHRoZSBtYXhpbXVtIGFu
ZCBtaW5pbXVtIHBhdGhzIG9mIGJ1c19jbGsgaW4gbXkgdGltaW5nIHJlcG9ydHMgYW5kIGl0IHNl
ZW1zIHRoYXQgYnVzX2NsayYjMzk7cyBwYXRocyBpbmNsdWRlIG15IGJsb2NrLjxkaXY+VGhhbmtz
IGFnYWluITwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXY+S2luZMKgcmVnYXJkcyw8L2Rpdj48ZGl2
Pk1hcmlhPC9kaXY+PC9kaXY+PGJyPjxkaXYgY2xhc3M9ImdtYWlsX3F1b3RlIj48ZGl2IGRpcj0i
bHRyIiBjbGFzcz0iZ21haWxfYXR0ciI+RWwgbWnDqSwgMSBqdW4gMjAyMiBhIGxhcyAyMDo1NCwg
V2FkZSBGaWZlICgmbHQ7PGEgaHJlZj0ibWFpbHRvOndhZGUuZmlmZUBldHR1cy5jb20iPndhZGUu
ZmlmZUBldHR1cy5jb208L2E+Jmd0OykgZXNjcmliacOzOjxicj48L2Rpdj48YmxvY2txdW90ZSBj
bGFzcz0iZ21haWxfcXVvdGUiIHN0eWxlPSJtYXJnaW46MHB4IDBweCAwcHggMC44ZXg7Ym9yZGVy
LWxlZnQ6MXB4IHNvbGlkIHJnYigyMDQsMjA0LDIwNCk7cGFkZGluZy1sZWZ0OjFleCI+PGRpdiBk
aXI9Imx0ciI+PGRpdj5ZZXMsIGJ1c19jbGsgaXMgY29ubmVjdGVkIHRvIHJmbm9jX2NoZHJfY2xr
IGluIHRoZSBSRk5vQyBmcmFtZXdvcmsuU28gaW4gdGhlIFlBTUwgaXQgaXMgY2FsbGVkICZxdW90
O3Jmbm9jX2NoZHImcXVvdDsuPGJyPjwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXY+V2FkZTxicj48
L2Rpdj48L2Rpdj48YnI+PGRpdiBjbGFzcz0iZ21haWxfcXVvdGUiPjxkaXYgZGlyPSJsdHIiIGNs
YXNzPSJnbWFpbF9hdHRyIj5PbiBXZWQsIEp1biAxLCAyMDIyIGF0IDM6NDEgQU0gTWFyaWEgTXXD
sW96ICZsdDs8YSBocmVmPSJtYWlsdG86bWFtdWtpOTJAZ21haWwuY29tIiB0YXJnZXQ9Il9ibGFu
ayI+bWFtdWtpOTJAZ21haWwuY29tPC9hPiZndDsgd3JvdGU6PGJyPjwvZGl2PjxibG9ja3F1b3Rl
IGNsYXNzPSJnbWFpbF9xdW90ZSIgc3R5bGU9Im1hcmdpbjowcHggMHB4IDBweCAwLjhleDtib3Jk
ZXItbGVmdDoxcHggc29saWQgcmdiKDIwNCwyMDQsMjA0KTtwYWRkaW5nLWxlZnQ6MWV4Ij48ZGl2
IGRpcj0ibHRyIj5IaSBXYWRlLDxkaXY+PGJyPjwvZGl2PjxkaXY+VGhhbmtzIGZvciB0aGUgYW5z
d2VyLiBTbyAmcXVvdDtyZm5vY19jaGRyJnF1b3Q7IGluIHRoZSB5bWwgZmlsZSBpcyAmcXVvdDti
dXNfY2xrJnF1b3Q7P8KgPC9kaXY+PGRpdj5JbiB0aGUgcmVwb3J0IHRpbWluZyBzdW1tYXJ5LCBJ
IHNlZSBtYW55IGNsb2NrcyBidXQgdGhlcmUgaXMgbm8gJnF1b3Q7cmZub2NfY2hkciZxdW90OyzC
oG1heWJlIGlzIGxpbmtlZCBzb21ld2hlcmUgZWxzZSBpbiB0aGUgZnJhbWV3b3JrPzo8L2Rpdj48
ZGl2Pi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLTxicj58IENsb2NrIFN1
bW1hcnk8YnI+fCAtLS0tLS0tLS0tLS0tPGJyPi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLTxicj48YnI+Q2xvY2vCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoFdhdmVmb3JtKG5zKcKgIMKgIFBlcmlvZChucynCoCDCoEZy
ZXF1ZW5jeShNSHopPGJyPi0tLS0tIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgLS0tLS0tLS0tLS0twqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAtLS0tLS0tLS0tIMKgIMKgIMKgLS0tLS0tLS0tLS0tLS08YnI+REIwX0FEQ19EQ0xLwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqB7MC4wMDAgMi41MDB9IMKgIMKgIMKgIMKgNS4wMDAgwqAg
wqAgwqAgwqAgwqAgMjAwLjAwMCDCoCDCoCDCoCDCoCA8YnI+REIxX0FEQ19EQ0xLwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqB7MC4wMDAgMi41MDB9IMKgIMKgIMKgIMKgNS4wMDAgwqAgwqAg
wqAgwqAgwqAgMjAwLjAwMCDCoCDCoCDCoCDCoCA8YnI+RVRIX0NMS8KgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgezAuMDAwIDQuMDAwfSDCoCDCoCDCoCDCoDgu
MDAwIMKgIMKgIMKgIMKgIMKgIDEyNS4wMDAgwqAgwqAgwqAgwqAgPGJyPkZQR0FfMTI1TUh6X0NM
S8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgezAuMDAwIDQuMDAwfSDCoCDCoCDCoCDCoDguMDAwIMKgIMKg
IMKgIMKgIMKgIDEyNS4wMDAgwqAgwqAgwqAgwqAgPGJyPsKgIGJ1c19jbGvCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHswLjAwMCAyLjY2N30gwqAgwqAg
wqAgwqA1LjMzMyDCoCDCoCDCoCDCoCDCoCAxODcuNTAwIMKgIMKgIMKgIMKgIDxicj7CoCBidXNf
Y2xrX2RpdjLCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCB7MC4wMDAgNS4zMzN9
IMKgIMKgIMKgIMKgMTAuNjY3IMKgIMKgIMKgIMKgIMKgOTMuNzUwIMKgIMKgIMKgIMKgIMKgPGJy
PsKgIGNlX2Nsa8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgezAuMDAwIDIuMzMzfSDCoCDCoCDCoCDCoDQuNjY3IMKgIMKgIMKgIMKgIMKgIDIxNC4y
ODYgwqAgwqAgwqAgwqAgPGJyPsKgIGNsa2Zib3V0X3BjaWVfY2xrX2dlbsKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IHswLjAwMCA0LjAwMH0gwqAgwqAgwqAgwqA4LjAwMCDCoCDCoCDCoCDCoCDCoCAxMjUuMDAwIMKg
IMKgIMKgIMKgIDxicj7CoCBpb3BvcnQyX2Nsa8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIHswLjAwMCA0LjAwMH0gwqAgwqAgwqAgwqA4LjAwMCDCoCDCoCDCoCDCoCDC
oCAxMjUuMDAwIMKgIMKgIMKgIMKgIDxicj7CoCDCoCBJb1BvcnQyV3JhcHBlcngvVHhDbG9ja0dl
bngvVHhVc2VNbWNtLkNsa0ZiT3V0TW1jbcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIHsw
LjAwMCA0LjAwMH0gwqAgwqAgwqAgwqA4LjAwMCDCoCDCoCDCoCDCoCDCoCAxMjUuMDAwIMKgIMKg
IMKgIMKgIDxicj7CoCDCoCBJb1BvcnQyV3JhcHBlcngvVHhDbG9ja0dlbngvVHhVc2VNbWNtLkNs
a091dDBNbWNtwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgezAuMDAwIDIuMDAwfSDC
oCDCoCDCoCDCoDQuMDAwIMKgIMKgIMKgIMKgIMKgIDI1MC4wMDAgwqAgwqAgwqAgwqAgPGJyPsKg
IMKgIMKgIElvVHhDbG9ja8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgezAu
MDAwIDIuMDAwfSDCoCDCoCDCoCDCoDQuMDAwIMKgIMKgIMKgIMKgIMKgIDI1MC4wMDAgwqAgwqAg
wqAgwqAgPGJyPsKgIMKgIElvUG9ydDJXcmFwcGVyeC9UeENsb2NrR2VueC9UeFVzZU1tY20uQ2xr
T3V0MU1tY23CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCB7MC4wMDAgNC4wMDB9IMKg
IMKgIMKgIMKgOC4wMDAgwqAgwqAgwqAgwqAgwqAgMTI1LjAwMCDCoCDCoCDCoCDCoCA8YnI+wqAg
aW9wb3J0Ml9pZGVsYXlfcmVmX2Nsa8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIHswLjAwMCAyLjUwMH0gwqAgwqAg
wqAgwqA1LjAwMCDCoCDCoCDCoCDCoCDCoCAyMDAuMDAwIMKgIMKgIMKgIMKgIDxicj7CoCByaW80
MF9jbGvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHswLjAw
MCAxMi41MDB9IMKgIMKgIMKgIDI1LjAwMCDCoCDCoCDCoCDCoCDCoDQwLjAwMCDCoCDCoCDCoCDC
oCDCoDxicj5GUEdBX0NMS8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgezAuMDAwIDIuNTAwfSDCoCDCoCDCoCDCoDUuMDAwIMKgIMKgIMKgIMKgIMKgIDIwMC4wMDAg
wqAgwqAgwqAgwqAgPGJyPsKgIENMS19PVVQzX3JhZGlvX2Nsa19nZW7CoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHswLjQxNyAxLjY2
N30gwqAgwqAgwqAgwqAyLjUwMCDCoCDCoCDCoCDCoCDCoCA0MDAuMDAwIMKgIMKgIMKgIMKgIDxi
cj7CoCDCoCBEQjBfREFDX0RDScKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgezAuNDE3IDEu
NjY3fSDCoCDCoCDCoCDCoDIuNTAwIMKgIMKgIMKgIMKgIMKgIDQwMC4wMDAgwqAgwqAgwqAgwqAg
PGJyPsKgIMKgIERCMV9EQUNfRENJwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqB7MC40MTcg
MS42Njd9IMKgIMKgIMKgIMKgMi41MDAgwqAgwqAgwqAgwqAgwqAgNDAwLjAwMCDCoCDCoCDCoCDC
oCA8YnI+wqAgY2xrZmJvdXRfcmFkaW9fY2xrX2dlbsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIHswLjAwMCAyLjUw
MH0gwqAgwqAgwqAgwqA1LjAwMCDCoCDCoCDCoCDCoCDCoCAyMDAuMDAwIMKgIMKgIMKgIMKgIDxi
cj7CoCByYWRpb19jbGvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCB7MC4wMDAgMi41MDB9IMKgIMKgIMKgIMKgNS4wMDAgwqAgwqAgwqAgwqAgwqAgMjAwLjAw
MCDCoCDCoCDCoCDCoCA8YnI+wqAgcmFkaW9fY2xrXzJ4wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgey0wLjMxMiAwLjkzN30gwqAgwqAgwqAgMi41MDAgwqAgwqAgwqAgwqAg
wqAgNDAwLjAwMMKgIMKgIMKgIMKgIMKgPGJyPjwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXY+SG93
IGRvIEkga25vd8Kgd2hpY2ggY2xvY2vCoG9mIHRob3NlIGlzIGdvaW5nIHRvIG15IGRlc2lnbj88
L2Rpdj48ZGl2Pjxicj48L2Rpdj48ZGl2PktpbmQgUmVnYXJkcyw8L2Rpdj48ZGl2Pk1hcmlhPC9k
aXY+PC9kaXY+PGJyPjxkaXYgY2xhc3M9ImdtYWlsX3F1b3RlIj48ZGl2IGRpcj0ibHRyIiBjbGFz
cz0iZ21haWxfYXR0ciI+RWwgbWFyLCAzMSBtYXkgMjAyMiBhIGxhcyAyMjozMCwgV2FkZSBGaWZl
ICgmbHQ7PGEgaHJlZj0ibWFpbHRvOndhZGUuZmlmZUBldHR1cy5jb20iIHRhcmdldD0iX2JsYW5r
Ij53YWRlLmZpZmVAZXR0dXMuY29tPC9hPiZndDspIGVzY3JpYmnDszo8YnI+PC9kaXY+PGJsb2Nr
cXVvdGUgY2xhc3M9ImdtYWlsX3F1b3RlIiBzdHlsZT0ibWFyZ2luOjBweCAwcHggMHB4IDAuOGV4
O2JvcmRlci1sZWZ0OjFweCBzb2xpZCByZ2IoMjA0LDIwNCwyMDQpO3BhZGRpbmctbGVmdDoxZXgi
PjxkaXYgZGlyPSJsdHIiPjxkaXY+SGkgTWFyaWEsPC9kaXY+PGRpdj48YnI+PC9kaXY+PGRpdj5Z
b3UgaGF2ZSB0aGUgcmlnaHQgaWRlYS4gWW91IHNob3VsZCBiZSBhYmxlIHRvIGNoYW5nZSB0aGUg
c3JjcG9ydCBmcm9tICZxdW90O2NlJnF1b3Q7IHRvICZxdW90O3Jmbm9jX2NoZHImcXVvdDsgaW4g
dGhlIGxpbmUgZm9yIHlvdXIgYmxvY2sgaW4gdGhlIGNsa19kb21haW5zIHNlY3Rpb24uIElmIHRo
YXQgZG9lc24mIzM5O3Qgd29yaywgc2hhcmUgeW91ciBZTUwgZmlsZSBhbmQgbWF5YmUgc29tZW9u
ZSBjYW4gc3BvdCB0aGUgcHJvYmxlbS48L2Rpdj48ZGl2Pjxicj48L2Rpdj48ZGl2PldhZGU8YnI+
PC9kaXY+PC9kaXY+PGJyPjxkaXYgY2xhc3M9ImdtYWlsX3F1b3RlIj48ZGl2IGRpcj0ibHRyIiBj
bGFzcz0iZ21haWxfYXR0ciI+T24gVHVlLCBNYXkgMzEsIDIwMjIgYXQgMzo0NyBBTSBNYXJpYSBN
dcOxb3ogJmx0OzxhIGhyZWY9Im1haWx0bzptYW11a2k5MkBnbWFpbC5jb20iIHRhcmdldD0iX2Js
YW5rIj5tYW11a2k5MkBnbWFpbC5jb208L2E+Jmd0OyB3cm90ZTo8YnI+PC9kaXY+PGJsb2NrcXVv
dGUgY2xhc3M9ImdtYWlsX3F1b3RlIiBzdHlsZT0ibWFyZ2luOjBweCAwcHggMHB4IDAuOGV4O2Jv
cmRlci1sZWZ0OjFweCBzb2xpZCByZ2IoMjA0LDIwNCwyMDQpO3BhZGRpbmctbGVmdDoxZXgiPjxk
aXYgZGlyPSJsdHIiPkhpIGFsbCw8YnI+PGRpdj48YnI+PC9kaXY+PGRpdj5JIGhhdmUgZ2VuZXJh
dGVkIGEgY3VzdG9tIFJGTm9DIGJsb2NrIHdpdGggcmZub2Ntb2R0b29sIHRvIGJlIGltcGxlbWVu
dGVkIG9uIFgzMTAuPC9kaXY+PGRpdj5JIGFtIHVzaW5nIFVIRCA0LjAuIHRvb2xjaGFpbiB0byBz
eW50aGVzaXplIGl0LCBidXQgSSBjYW5ub3QgbWVldCB0aW1pbmcgd2l0aCB0aGUgY2xvY2sgc2Vs
ZWN0ZWQgKGluIC9pY29yZXMveW1sIGZpbGUsIEkgaGF2ZSBzZWxlY3QgJnF1b3Q7Y2UmcXVvdDsg
YXMgdGhlIGNsayBzb3VyY2UgZm9yIG15IGJsb2NrKS48L2Rpdj48ZGl2Pkkgc2VlIHRoYXQgJnF1
b3Q7Y2UmcXVvdDsgY2xvY2sgZm9yIFgzMTAgaXMgMjE0IE1IeiBhbmQgSSB3b25kZXJlZCBpZiBJ
IGNvdWxkIHVzZSBhIHNsb3dlciBjbG9jayBmb3IgbXkgJnF1b3Q7Y2UmcXVvdDsgZnJvbSB0aGUg
aW50ZXJmYWNlLiBJbiB0aGUgY2xvY2sgcmVwb3J0cywgdGhlcmUgaXMgYSAmcXVvdDtidXNfY2xr
JnF1b3Q7IG9mIDE4Ny41IE1Ieiwgd2hpY2ggSSB0aGluayBpcyBzdWl0YWJsZSBmb3IgbXkgZGVz
aWduLCBidXQgaWYgSSBzZWxlY3QgJnF1b3Q7YnVzX2NsayZxdW90OyBhcyBjbGsgc291cmNlIGZv
ciBteSBibG9jayBpbiB0aGUgeW1sIGZpbGUgaXQgZ2l2ZXMgYW4gZXJyb3IgbWVzc2FnZTo8YnI+
W0VSUl0gMSB1bnJlc29sdmVkIGNsayBkb21haW4ocyk8YnI+W0VSUl0gwqAgwqAgYmxvY2swOmNl
PGJyPltFUlJdIFBsZWFzZSBzcGVjaWZ5IHRoZSBjbG9jayhzKSB0byBjb25uZWN0PGJyPjwvZGl2
PjxkaXY+PGJyPjwvZGl2PjxkaXY+SXQgaXMgcG9zc2libGUgdG8gdXNlICZxdW90O2J1c19jbGsm
cXVvdDsgYXMgdGhlIGNsb2NrIHNvdXJjZSBmb3IgbXkgYmxvY2s/IFdoaWNoIGZpbGVzIHNob3Vs
ZCBJIG1vZGlmeSB0byB1c2UgdGhpcyBjbG9jaz88L2Rpdj48ZGl2Pjxicj48L2Rpdj48ZGl2Pktp
bmQgUmVnYXJkcyw8L2Rpdj48ZGl2Pk1hcmlhPC9kaXY+PC9kaXY+DQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXzxicj4NClVTUlAtdXNlcnMgbWFpbGluZyBs
aXN0IC0tIDxhIGhyZWY9Im1haWx0bzp1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSIgdGFyZ2V0
PSJfYmxhbmsiPnVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPC9hPjxicj4NClRvIHVuc3Vic2Ny
aWJlIHNlbmQgYW4gZW1haWwgdG8gPGEgaHJlZj0ibWFpbHRvOnVzcnAtdXNlcnMtbGVhdmVAbGlz
dHMuZXR0dXMuY29tIiB0YXJnZXQ9Il9ibGFuayI+dXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1
cy5jb208L2E+PGJyPg0KPC9ibG9ja3F1b3RlPjwvZGl2Pg0KPC9ibG9ja3F1b3RlPjwvZGl2Pg0K
PC9ibG9ja3F1b3RlPjwvZGl2Pg0KPC9ibG9ja3F1b3RlPjwvZGl2Pg0K
--000000000000a906c505e0850853--

--===============6664403177186836633==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6664403177186836633==--
