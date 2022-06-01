Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 776EF539FC1
	for <lists+usrp-users@lfdr.de>; Wed,  1 Jun 2022 10:42:55 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0C9F2384437
	for <lists+usrp-users@lfdr.de>; Wed,  1 Jun 2022 04:42:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1654072974; bh=f8rAblXCqggCG3gxKOfDndNBSTi6fEdxGlh13scqN8E=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=lx0YY5cFbZpqHOxmnnHpnWAarReOZLMh3k77ZI1rY1cjexeqbHV3NcaCMEr6Zkxwo
	 yQiRpwQ4spcbz+HKulKaicCx9e+r6+qMtwPqIrOu/QU7tRCtfb51jzU9PtXY1C5zdP
	 Qe3OwJada5ySBVArkjYwHmJJwbPg/V6/pmaNF2ENcbA10Zei4rBVcw/9swt5JmzIOg
	 t0rztoaYA57aFp5q8W+D7XCHPZvM7I1ziQvdHTjhyBG8v0XThlZJ62S5Q6puTm4Eqa
	 tXf7OP56dHMIpRaiYmPpl4qAMEDofIi4W1tyP3JtCexc5sWKVpOvaqlXuqPKNg13p7
	 nRzU41P5Pfa2Q==
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 2F0EF3842C0
	for <usrp-users@lists.ettus.com>; Wed,  1 Jun 2022 04:41:54 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="amzHRNru";
	dkim-atps=neutral
Received: by mail-ej1-f43.google.com with SMTP id fu3so777270ejc.7
        for <usrp-users@lists.ettus.com>; Wed, 01 Jun 2022 01:41:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=OgXvg0hvjLSI7OgVSZ0O4hZm7KsKugBs33Jy868+yFQ=;
        b=amzHRNruYtp3da/m2TBNp/J4MGQ/DtUrzECBjUHquzGKum5G1cq0eEZ6OqiEUjwIpz
         mnKHEf7XN/vmLKWIkcaZ+tR/Q5Z5azSeJTyJni6wVxQryPSwtPKJnKuAbn5R5nWVS/8S
         r1T4hHxQFoAWsg4Jj2x3XljIbUItmsoNXAIZ9nYGvHOW1J37waRCnariWEKMUlg371B3
         SvKoZYzMV9mk9T/bNGU4Ok7nlG9nezr3TMzYK9GfM87QPzjxQQORDPDM0qqkrAvuEH43
         EZlINjEqxc2ocmTTkmShIyYWdNEqRm2nLGJ9cFP4EwN2uIk5SSPy3mjAIldvcOIxW8em
         JXMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=OgXvg0hvjLSI7OgVSZ0O4hZm7KsKugBs33Jy868+yFQ=;
        b=rrb4aYeStUmQgUfjD+wi7lLmbvU+21PrnBiExc23/pX6di+8QsKsbdd/XlKHGxf0Sw
         kYkDqSaf/RsyEKMDIlBjNY7cbdv/O1Y2O248I3NL4Mxj2THKc0xytqCVQpv3x6tyW4zM
         1hH52ReiSumknMr+WGwssiSfe0ZLP7uyLFR/PfziouozQKr0lhXyzKSFrEjPh7iCh/CN
         VS1R+NIMxsArpRBRGW2jiohvNiMt6fU2ShkCiglRPFqCkqRviHV4ct+/sz3Pk6+/otZb
         ExuQx5snzc8bEL67bBcSFRIw6TgZA18/jxmc+GMXrccae1pQoq1b4WLXab8GPcm104nK
         PG/w==
X-Gm-Message-State: AOAM530HrVWyBYqi4CeLvaux4At++hYw3k4I9YpWMZ0q0Yd4UbxE3mk1
	5gUFfRCISpAdNFNl6hoDVoSMtQdv0THSWSM8H81MPQK18Hk=
X-Google-Smtp-Source: ABdhPJz68S3nbLS4BbqeXNVYJ46DOwO+BRGWUD7kzXpJHNo2RF5YT6jZvVGPL0mLmuupcXeeZY9gzkYppE0KGGppT4o=
X-Received: by 2002:a17:907:1c81:b0:6ff:335d:a0f7 with SMTP id
 nb1-20020a1709071c8100b006ff335da0f7mr22095486ejc.182.1654072912986; Wed, 01
 Jun 2022 01:41:52 -0700 (PDT)
MIME-Version: 1.0
References: <CAG16vQUahtZ8Ca0CSgu_dacdwPMX9grDjs93+jzUjn8ABNJi9g@mail.gmail.com>
 <CAFche=jqbjpNuErU0YJOkE8csynOtfVmvUEvfPGmUQEEbJLRkg@mail.gmail.com>
In-Reply-To: <CAFche=jqbjpNuErU0YJOkE8csynOtfVmvUEvfPGmUQEEbJLRkg@mail.gmail.com>
From: =?UTF-8?B?TWFyaWEgTXXDsW96?= <mamuki92@gmail.com>
Date: Wed, 1 Jun 2022 10:41:40 +0200
Message-ID: <CAG16vQWz5_BH4BNP-cVtXx=e22VTDb3QU+76-epzs-nd5TCaXg@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
Message-ID-Hash: BXAJ7YDUJMG2SUAFKO4VV5WUVIOCQDUV
X-Message-ID-Hash: BXAJ7YDUJMG2SUAFKO4VV5WUVIOCQDUV
X-MailFrom: mamuki92@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Select lower clk in X310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BXAJ7YDUJMG2SUAFKO4VV5WUVIOCQDUV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8659961022521440012=="

--===============8659961022521440012==
Content-Type: multipart/alternative; boundary="00000000000069451405e05edc03"

--00000000000069451405e05edc03
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Wade,

Thanks for the answer. So "rfnoc_chdr" in the yml file is "bus_clk"?
In the report timing summary, I see many clocks but there is no
"rfnoc_chdr", maybe is linked somewhere else in the framework?:
---------------------------------------------------------------------------=
---------------------
| Clock Summary
| -------------
---------------------------------------------------------------------------=
---------------------

Clock

     Waveform(ns)    Period(ns)   Frequency(MHz)
-----

       ------------               ----------      --------------
DB0_ADC_DCLK
                                                                     {0.000
2.500}        5.000           200.000
DB1_ADC_DCLK
                                                                     {0.000
2.500}        5.000           200.000
ETH_CLK

 {0.000 4.000}        8.000           125.000
FPGA_125MHz_CLK
                                                                   {0.000
4.000}        8.000           125.000
  bus_clk

     {0.000 2.667}        5.333           187.500
  bus_clk_div2

{0.000 5.333}        10.667          93.750
  ce_clk

     {0.000 2.333}        4.667           214.286
  clkfbout_pcie_clk_gen

{0.000 4.000}        8.000           125.000
  ioport2_clk

    {0.000 4.000}        8.000           125.000
    IoPort2Wrapperx/TxClockGenx/TxUseMmcm.ClkFbOutMmcm
                                    {0.000 4.000}        8.000
125.000
    IoPort2Wrapperx/TxClockGenx/TxUseMmcm.ClkOut0Mmcm
                                      {0.000 2.000}        4.000
250.000
      IoTxClock

   {0.000 2.000}        4.000           250.000
    IoPort2Wrapperx/TxClockGenx/TxUseMmcm.ClkOut1Mmcm
                                      {0.000 4.000}        8.000
125.000
  ioport2_idelay_ref_clk

{0.000 2.500}        5.000           200.000
  rio40_clk

     {0.000 12.500}       25.000          40.000
FPGA_CLK

 {0.000 2.500}        5.000           200.000
  CLK_OUT3_radio_clk_gen
                                                                 {0.417
1.667}        2.500           400.000
    DB0_DAC_DCI

 {0.417 1.667}        2.500           400.000
    DB1_DAC_DCI

 {0.417 1.667}        2.500           400.000
  clkfbout_radio_clk_gen

{0.000 2.500}        5.000           200.000
  radio_clk

      {0.000 2.500}        5.000           200.000
  radio_clk_2x

  {-0.312 0.937}       2.500           400.000

How do I know which clock of those is going to my design?

Kind Regards,
Maria

El mar, 31 may 2022 a las 22:30, Wade Fife (<wade.fife@ettus.com>) escribi=
=C3=B3:

> Hi Maria,
>
> You have the right idea. You should be able to change the srcport from
> "ce" to "rfnoc_chdr" in the line for your block in the clk_domains sectio=
n.
> If that doesn't work, share your YML file and maybe someone can spot the
> problem.
>
> Wade
>
> On Tue, May 31, 2022 at 3:47 AM Maria Mu=C3=B1oz <mamuki92@gmail.com> wro=
te:
>
>> Hi all,
>>
>> I have generated a custom RFNoC block with rfnocmodtool to be implemente=
d
>> on X310.
>> I am using UHD 4.0. toolchain to synthesize it, but I cannot meet timing
>> with the clock selected (in /icores/yml file, I have select "ce" as the =
clk
>> source for my block).
>> I see that "ce" clock for X310 is 214 MHz and I wondered if I could use =
a
>> slower clock for my "ce" from the interface. In the clock reports, there=
 is
>> a "bus_clk" of 187.5 MHz, which I think is suitable for my design, but i=
f I
>> select "bus_clk" as clk source for my block in the yml file it gives an
>> error message:
>> [ERR] 1 unresolved clk domain(s)
>> [ERR]     block0:ce
>> [ERR] Please specify the clock(s) to connect
>>
>> It is possible to use "bus_clk" as the clock source for my block? Which
>> files should I modify to use this clock?
>>
>> Kind Regards,
>> Maria
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--00000000000069451405e05edc03
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+SGkgV2FkZSw8ZGl2Pjxicj48L2Rpdj48ZGl2PlRoYW5rcyBmb3IgdGhl
IGFuc3dlci4gU28gJnF1b3Q7cmZub2NfY2hkciZxdW90OyBpbiB0aGUgeW1sIGZpbGUgaXMgJnF1
b3Q7YnVzX2NsayZxdW90Oz/CoDwvZGl2PjxkaXY+SW4gdGhlIHJlcG9ydCB0aW1pbmcgc3VtbWFy
eSwgSSBzZWUgbWFueSBjbG9ja3MgYnV0IHRoZXJlIGlzIG5vICZxdW90O3Jmbm9jX2NoZHImcXVv
dDsswqBtYXliZSBpcyBsaW5rZWQgc29tZXdoZXJlIGVsc2UgaW4gdGhlIGZyYW1ld29yaz86PC9k
aXY+PGRpdj4tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS08YnI+fCBDbG9j
ayBTdW1tYXJ5PGJyPnwgLS0tLS0tLS0tLS0tLTxicj4tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS08YnI+PGJyPkNsb2NrwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBXYXZlZm9ybShucynCoCDCoCBQZXJpb2QobnMpwqAg
wqBGcmVxdWVuY3koTUh6KTxicj4tLS0tLSDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoC0tLS0tLS0tLS0tLcKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgLS0tLS0tLS0tLSDCoCDCoCDCoC0tLS0tLS0tLS0tLS0tPGJyPkRCMF9BRENfRENMS8Kg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgezAuMDAwIDIuNTAwfSDCoCDCoCDCoCDCoDUuMDAw
IMKgIMKgIMKgIMKgIMKgIDIwMC4wMDAgwqAgwqAgwqAgwqAgPGJyPkRCMV9BRENfRENMS8KgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgezAuMDAwIDIuNTAwfSDCoCDCoCDCoCDCoDUuMDAwIMKg
IMKgIMKgIMKgIMKgIDIwMC4wMDAgwqAgwqAgwqAgwqAgPGJyPkVUSF9DTEvCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHswLjAwMCA0LjAwMH0gwqAgwqAgwqAg
wqA4LjAwMCDCoCDCoCDCoCDCoCDCoCAxMjUuMDAwIMKgIMKgIMKgIMKgIDxicj5GUEdBXzEyNU1I
el9DTEvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHswLjAwMCA0LjAwMH0gwqAgwqAgwqAgwqA4LjAwMCDC
oCDCoCDCoCDCoCDCoCAxMjUuMDAwIMKgIMKgIMKgIMKgIDxicj7CoCBidXNfY2xrwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqB7MC4wMDAgMi42Njd9IMKg
IMKgIMKgIMKgNS4zMzMgwqAgwqAgwqAgwqAgwqAgMTg3LjUwMCDCoCDCoCDCoCDCoCA8YnI+wqAg
YnVzX2Nsa19kaXYywqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgezAuMDAwIDUu
MzMzfSDCoCDCoCDCoCDCoDEwLjY2NyDCoCDCoCDCoCDCoCDCoDkzLjc1MCDCoCDCoCDCoCDCoCDC
oDxicj7CoCBjZV9jbGvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoHswLjAwMCAyLjMzM30gwqAgwqAgwqAgwqA0LjY2NyDCoCDCoCDCoCDCoCDCoCAy
MTQuMjg2IMKgIMKgIMKgIMKgIDxicj7CoCBjbGtmYm91dF9wY2llX2Nsa19nZW7CoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCB7MC4wMDAgNC4wMDB9IMKgIMKgIMKgIMKgOC4wMDAgwqAgwqAgwqAgwqAgwqAgMTI1LjAw
MCDCoCDCoCDCoCDCoCA8YnI+wqAgaW9wb3J0Ml9jbGvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCB7MC4wMDAgNC4wMDB9IMKgIMKgIMKgIMKgOC4wMDAgwqAgwqAgwqAg
wqAgwqAgMTI1LjAwMCDCoCDCoCDCoCDCoCA8YnI+wqAgwqAgSW9Qb3J0MldyYXBwZXJ4L1R4Q2xv
Y2tHZW54L1R4VXNlTW1jbS5DbGtGYk91dE1tY23CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCB7MC4wMDAgNC4wMDB9IMKgIMKgIMKgIMKgOC4wMDAgwqAgwqAgwqAgwqAgwqAgMTI1LjAwMCDC
oCDCoCDCoCDCoCA8YnI+wqAgwqAgSW9Qb3J0MldyYXBwZXJ4L1R4Q2xvY2tHZW54L1R4VXNlTW1j
bS5DbGtPdXQwTW1jbcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIHswLjAwMCAyLjAw
MH0gwqAgwqAgwqAgwqA0LjAwMCDCoCDCoCDCoCDCoCDCoCAyNTAuMDAwIMKgIMKgIMKgIMKgIDxi
cj7CoCDCoCDCoCBJb1R4Q2xvY2vCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oHswLjAwMCAyLjAwMH0gwqAgwqAgwqAgwqA0LjAwMCDCoCDCoCDCoCDCoCDCoCAyNTAuMDAwIMKg
IMKgIMKgIMKgIDxicj7CoCDCoCBJb1BvcnQyV3JhcHBlcngvVHhDbG9ja0dlbngvVHhVc2VNbWNt
LkNsa091dDFNbWNtwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgezAuMDAwIDQuMDAw
fSDCoCDCoCDCoCDCoDguMDAwIMKgIMKgIMKgIMKgIMKgIDEyNS4wMDAgwqAgwqAgwqAgwqAgPGJy
PsKgIGlvcG9ydDJfaWRlbGF5X3JlZl9jbGvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCB7MC4wMDAgMi41MDB9IMKg
IMKgIMKgIMKgNS4wMDAgwqAgwqAgwqAgwqAgwqAgMjAwLjAwMCDCoCDCoCDCoCDCoCA8YnI+wqAg
cmlvNDBfY2xrwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqB7
MC4wMDAgMTIuNTAwfSDCoCDCoCDCoCAyNS4wMDAgwqAgwqAgwqAgwqAgwqA0MC4wMDAgwqAgwqAg
wqAgwqAgwqA8YnI+RlBHQV9DTEvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoHswLjAwMCAyLjUwMH0gwqAgwqAgwqAgwqA1LjAwMCDCoCDCoCDCoCDCoCDCoCAyMDAu
MDAwIMKgIMKgIMKgIMKgIDxicj7CoCBDTEtfT1VUM19yYWRpb19jbGtfZ2VuwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqB7MC40MTcg
MS42Njd9IMKgIMKgIMKgIMKgMi41MDAgwqAgwqAgwqAgwqAgwqAgNDAwLjAwMCDCoCDCoCDCoCDC
oCA8YnI+wqAgwqAgREIwX0RBQ19EQ0nCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHswLjQx
NyAxLjY2N30gwqAgwqAgwqAgwqAyLjUwMCDCoCDCoCDCoCDCoCDCoCA0MDAuMDAwIMKgIMKgIMKg
IMKgIDxicj7CoCDCoCBEQjFfREFDX0RDScKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgezAu
NDE3IDEuNjY3fSDCoCDCoCDCoCDCoDIuNTAwIMKgIMKgIMKgIMKgIMKgIDQwMC4wMDAgwqAgwqAg
wqAgwqAgPGJyPsKgIGNsa2Zib3V0X3JhZGlvX2Nsa19nZW7CoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCB7MC4wMDAg
Mi41MDB9IMKgIMKgIMKgIMKgNS4wMDAgwqAgwqAgwqAgwqAgwqAgMjAwLjAwMCDCoCDCoCDCoCDC
oCA8YnI+wqAgcmFkaW9fY2xrwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgezAuMDAwIDIuNTAwfSDCoCDCoCDCoCDCoDUuMDAwIMKgIMKgIMKgIMKgIMKgIDIw
MC4wMDAgwqAgwqAgwqAgwqAgPGJyPsKgIHJhZGlvX2Nsa18yeMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIHstMC4zMTIgMC45Mzd9IMKgIMKgIMKgIDIuNTAwIMKgIMKgIMKg
IMKgIMKgIDQwMC4wMDDCoCDCoCDCoCDCoCDCoDxicj48L2Rpdj48ZGl2Pjxicj48L2Rpdj48ZGl2
PkhvdyBkbyBJIGtub3fCoHdoaWNoIGNsb2NrwqBvZiB0aG9zZSBpcyBnb2luZyB0byBteSBkZXNp
Z24/PC9kaXY+PGRpdj48YnI+PC9kaXY+PGRpdj5LaW5kIFJlZ2FyZHMsPC9kaXY+PGRpdj5NYXJp
YTwvZGl2PjwvZGl2Pjxicj48ZGl2IGNsYXNzPSJnbWFpbF9xdW90ZSI+PGRpdiBkaXI9Imx0ciIg
Y2xhc3M9ImdtYWlsX2F0dHIiPkVsIG1hciwgMzEgbWF5IDIwMjIgYSBsYXMgMjI6MzAsIFdhZGUg
RmlmZSAoJmx0OzxhIGhyZWY9Im1haWx0bzp3YWRlLmZpZmVAZXR0dXMuY29tIj53YWRlLmZpZmVA
ZXR0dXMuY29tPC9hPiZndDspIGVzY3JpYmnDszo8YnI+PC9kaXY+PGJsb2NrcXVvdGUgY2xhc3M9
ImdtYWlsX3F1b3RlIiBzdHlsZT0ibWFyZ2luOjBweCAwcHggMHB4IDAuOGV4O2JvcmRlci1sZWZ0
OjFweCBzb2xpZCByZ2IoMjA0LDIwNCwyMDQpO3BhZGRpbmctbGVmdDoxZXgiPjxkaXYgZGlyPSJs
dHIiPjxkaXY+SGkgTWFyaWEsPC9kaXY+PGRpdj48YnI+PC9kaXY+PGRpdj5Zb3UgaGF2ZSB0aGUg
cmlnaHQgaWRlYS4gWW91IHNob3VsZCBiZSBhYmxlIHRvIGNoYW5nZSB0aGUgc3JjcG9ydCBmcm9t
ICZxdW90O2NlJnF1b3Q7IHRvICZxdW90O3Jmbm9jX2NoZHImcXVvdDsgaW4gdGhlIGxpbmUgZm9y
IHlvdXIgYmxvY2sgaW4gdGhlIGNsa19kb21haW5zIHNlY3Rpb24uIElmIHRoYXQgZG9lc24mIzM5
O3Qgd29yaywgc2hhcmUgeW91ciBZTUwgZmlsZSBhbmQgbWF5YmUgc29tZW9uZSBjYW4gc3BvdCB0
aGUgcHJvYmxlbS48L2Rpdj48ZGl2Pjxicj48L2Rpdj48ZGl2PldhZGU8YnI+PC9kaXY+PC9kaXY+
PGJyPjxkaXYgY2xhc3M9ImdtYWlsX3F1b3RlIj48ZGl2IGRpcj0ibHRyIiBjbGFzcz0iZ21haWxf
YXR0ciI+T24gVHVlLCBNYXkgMzEsIDIwMjIgYXQgMzo0NyBBTSBNYXJpYSBNdcOxb3ogJmx0Ozxh
IGhyZWY9Im1haWx0bzptYW11a2k5MkBnbWFpbC5jb20iIHRhcmdldD0iX2JsYW5rIj5tYW11a2k5
MkBnbWFpbC5jb208L2E+Jmd0OyB3cm90ZTo8YnI+PC9kaXY+PGJsb2NrcXVvdGUgY2xhc3M9Imdt
YWlsX3F1b3RlIiBzdHlsZT0ibWFyZ2luOjBweCAwcHggMHB4IDAuOGV4O2JvcmRlci1sZWZ0OjFw
eCBzb2xpZCByZ2IoMjA0LDIwNCwyMDQpO3BhZGRpbmctbGVmdDoxZXgiPjxkaXYgZGlyPSJsdHIi
PkhpIGFsbCw8YnI+PGRpdj48YnI+PC9kaXY+PGRpdj5JIGhhdmUgZ2VuZXJhdGVkIGEgY3VzdG9t
IFJGTm9DIGJsb2NrIHdpdGggcmZub2Ntb2R0b29sIHRvIGJlIGltcGxlbWVudGVkIG9uIFgzMTAu
PC9kaXY+PGRpdj5JIGFtIHVzaW5nIFVIRCA0LjAuIHRvb2xjaGFpbiB0byBzeW50aGVzaXplIGl0
LCBidXQgSSBjYW5ub3QgbWVldCB0aW1pbmcgd2l0aCB0aGUgY2xvY2sgc2VsZWN0ZWQgKGluIC9p
Y29yZXMveW1sIGZpbGUsIEkgaGF2ZSBzZWxlY3QgJnF1b3Q7Y2UmcXVvdDsgYXMgdGhlIGNsayBz
b3VyY2UgZm9yIG15IGJsb2NrKS48L2Rpdj48ZGl2Pkkgc2VlIHRoYXQgJnF1b3Q7Y2UmcXVvdDsg
Y2xvY2sgZm9yIFgzMTAgaXMgMjE0IE1IeiBhbmQgSSB3b25kZXJlZCBpZiBJIGNvdWxkIHVzZSBh
IHNsb3dlciBjbG9jayBmb3IgbXkgJnF1b3Q7Y2UmcXVvdDsgZnJvbSB0aGUgaW50ZXJmYWNlLiBJ
biB0aGUgY2xvY2sgcmVwb3J0cywgdGhlcmUgaXMgYSAmcXVvdDtidXNfY2xrJnF1b3Q7IG9mIDE4
Ny41IE1Ieiwgd2hpY2ggSSB0aGluayBpcyBzdWl0YWJsZSBmb3IgbXkgZGVzaWduLCBidXQgaWYg
SSBzZWxlY3QgJnF1b3Q7YnVzX2NsayZxdW90OyBhcyBjbGsgc291cmNlIGZvciBteSBibG9jayBp
biB0aGUgeW1sIGZpbGUgaXQgZ2l2ZXMgYW4gZXJyb3IgbWVzc2FnZTo8YnI+W0VSUl0gMSB1bnJl
c29sdmVkIGNsayBkb21haW4ocyk8YnI+W0VSUl0gwqAgwqAgYmxvY2swOmNlPGJyPltFUlJdIFBs
ZWFzZSBzcGVjaWZ5IHRoZSBjbG9jayhzKSB0byBjb25uZWN0PGJyPjwvZGl2PjxkaXY+PGJyPjwv
ZGl2PjxkaXY+SXQgaXMgcG9zc2libGUgdG8gdXNlICZxdW90O2J1c19jbGsmcXVvdDsgYXMgdGhl
IGNsb2NrIHNvdXJjZSBmb3IgbXkgYmxvY2s/IFdoaWNoIGZpbGVzIHNob3VsZCBJIG1vZGlmeSB0
byB1c2UgdGhpcyBjbG9jaz88L2Rpdj48ZGl2Pjxicj48L2Rpdj48ZGl2PktpbmQgUmVnYXJkcyw8
L2Rpdj48ZGl2Pk1hcmlhPC9kaXY+PC9kaXY+DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXzxicj4NClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIDxhIGhy
ZWY9Im1haWx0bzp1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPnVz
cnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPC9hPjxicj4NClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4g
ZW1haWwgdG8gPGEgaHJlZj0ibWFpbHRvOnVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29t
IiB0YXJnZXQ9Il9ibGFuayI+dXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb208L2E+PGJy
Pg0KPC9ibG9ja3F1b3RlPjwvZGl2Pg0KPC9ibG9ja3F1b3RlPjwvZGl2Pg0K
--00000000000069451405e05edc03--

--===============8659961022521440012==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8659961022521440012==--
