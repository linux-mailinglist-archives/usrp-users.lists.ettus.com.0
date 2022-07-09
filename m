Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AD22056CA25
	for <lists+usrp-users@lfdr.de>; Sat,  9 Jul 2022 16:39:12 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 329B7384030
	for <lists+usrp-users@lfdr.de>; Sat,  9 Jul 2022 10:39:11 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1657377551; bh=vHNB0m9evJjpHF+reo7x2G4uO7cghtu8HNZbM/R2Q5w=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=koXFmyKPiCZ1XEuDITYNFc3e/kROToSkeIp9Nb+hZkFBu2/Gs0vJD3Ou2cJMemT5a
	 8kJFMCL+e/BPxYsrsDUb48Fbdn1v81o+RNZ7WFvA6AilYLop3Bdd+YHUk5IFnEk7/0
	 RLpLpkJAaZLO+ygwhiqR6loKlpWH9QoLbwx/S2XB/nhMdqeVxGyW3osctxOhztfz6r
	 /6zj7EQiC33COoY414AKfP/VnAwr5c8T5bMhR6c8NfDBMWt8StEx3/LNmAIrCdq8jp
	 TQbEXGruMdHAO6STknBkAR5pU3/FwdPwg5voI/V61weecqwlsscxBpG8szQL4oZjRz
	 PaP6UdwBgckMg==
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 5D1B4383F8B
	for <usrp-users@lists.ettus.com>; Sat,  9 Jul 2022 10:36:54 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="X5P28qJE";
	dkim-atps=neutral
Received: by mail-ej1-f51.google.com with SMTP id j22so2094848ejs.2
        for <usrp-users@lists.ettus.com>; Sat, 09 Jul 2022 07:36:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=plZ0qXQRj4YVgmqtrGF99RkXjAUyW5HLByab5oP3jwk=;
        b=X5P28qJE9VwtYx3LTbACp9K+algNSHl5R/8DHiTNZObq7gDvdZUysHIX2TLPiCjHef
         IExe3Z9Sv9qmLGcifmaaS4bRbLkM5E41Pox4XK1xLO+PBRp/oOcSvr7Zm8rS7/RZ/s1k
         rpAP+TtLvJ8Qve5tkr0q6wWJCGtkN6JOA0wzZ4YuDUyR6csXKKNgg+fu864eolDaK4V/
         tAtNt2tAwS0tx3Ln2MtTahhc+DB4KzADKQWCM1Hjt6dTgjMx15PvmIkzH73x8ALVexKM
         Seht2m+MFnUyjSlzVQU5MgCk73zySc+zFpM21hrWwTUnPozSeAyjKy4Bw5yfqYZWwgR0
         NtHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=plZ0qXQRj4YVgmqtrGF99RkXjAUyW5HLByab5oP3jwk=;
        b=4dcudYJBkqh7zin1USAxgNQdLgA1Y3jjpllFENWArHY3Ozw2/5oOjnmI8Y9kHv500a
         G3aAv4eTMnwqv2ajtcIwKpHjbt2WU8gH2mjFyB0vMx2NYer7vVPCYujK0APRg8RZzeYl
         OXbKRatpreifNLexq8V92SmyHRyhwi8G1OmRiR4BxZsCjvyIi7+KZEGlf84Jzirym/bn
         DCEQ484FVuTCCfg4U4AC6Hh4byw2Z7mTBVB+li57YGMsb4qhCfCsw/4yplxlePOis4hc
         1/jAiTZ4aRUtrUHH7Cuq+YcjlbdEvkKKaBBpYPS6foxBW7VOUBATPl5Nl3pOaz6XGWmZ
         Pv3g==
X-Gm-Message-State: AJIora9HqOLSbmKDGicUE3I7+84lzXcReMiUIaSUdb6dZttGNF2d9qJf
	WRqxza4vaYsJZBJUaBywwXdbn4yq0Zi9IOy+K1BN8+6gYrg=
X-Google-Smtp-Source: AGRyM1tYpjqUSpQC5lGHG6+sOdH8TXd9Qpcnnuf9RnnLA29LmamgyUZiIG/l2bchu/xhzfXWbfJd5i9JD4FWbj9Sws4=
X-Received: by 2002:a17:907:2bf4:b0:72b:3336:ca9e with SMTP id
 gv52-20020a1709072bf400b0072b3336ca9emr4477775ejc.341.1657377413268; Sat, 09
 Jul 2022 07:36:53 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=S3PvfCKbWK0S5eae5hZjQSoVnZPhmAHcs5VLYopU9Uh0GYA@mail.gmail.com>
In-Reply-To: <CAA=S3PvfCKbWK0S5eae5hZjQSoVnZPhmAHcs5VLYopU9Uh0GYA@mail.gmail.com>
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Sat, 9 Jul 2022 17:36:42 +0300
Message-ID: <CAAxXO2F7LkXVLBoeUw6-24B50BfyUnMWp7HOWOcGNt9gNrHnog@mail.gmail.com>
To: sp <stackprogramer@gmail.com>
Message-ID-Hash: ZYS6BPHM75D3NTOFL2KUVZC4OGJU766E
X-Message-ID-Hash: ZYS6BPHM75D3NTOFL2KUVZC4OGJU766E
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How use convert class in UHD to convert complex float to complex sint16?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZYS6BPHM75D3NTOFL2KUVZC4OGJU766E/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

I don't know about gnuradio classes:( Maybe you should ask them...
But in C, I would use le32toh, I assume gnuradio is in little endian.
and then htobe16 to get for uhd:
uint16 data = htobe16(le32toh(float 32 data))
I assume this already does ceil or floor, so your data needs to be
already in the right scale:)

HTH
Nikos

On Sat, Jul 9, 2022 at 4:57 PM sp <stackprogramer@gmail.com> wrote:
>
> I know that data in USRP on FPGA is in format big-endian sint16, but in Gnuradio data is in format complex float 32...
> I found these links
> The conversion encompasses several elements. The most obvious is that of the data type: Most FPGAs use integer data types, the most common being complex 16-bit integers (16 bit for I and Q, respectively). If the user wants his data in float, the converter casts the data type and also scales the data, typically such that the full dynamic range of the 16-Bit integers is mapped onto the float range of -1 to 1. The converter also handles the endianness: On the network, data is usually stored as big-endian, whereas most platforms store data internally as little-endian.
>
> https://files.ettus.com/manual/classuhd_1_1convert_1_1converter.html#a371906249b8bd546b98bd0a867e70c88
> https://files.ettus.com/manual/page_converters.html
>
> According to them, I want to use the Convert class to convert complex float 32 to sint16....
> But my program is can not run successfully, Anyone can guide me on How should I use the Converter class...!!!
> Thanks in advance
>
>> #include <uhd/convert.hpp>
>
>
>
>>
>>  int main()
>>
>>    {
>>
>>    int16_t *in_p;
>>
>>    float *out_p;
>>
>>    *in_p=1234;
>>
>>    uhd::convert::converter::input_type in(in_p);
>>
>>    uhd::convert::converter::output_type out(out_p);
>>
>>    uhd::convert::converter::sptr convert;
>>
>>    convert->conv(in,out,1);
>>
>>    std::cout<<*out_p;
>>
>>       }
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
