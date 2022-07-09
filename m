Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 12F5E56CA3D
	for <lists+usrp-users@lfdr.de>; Sat,  9 Jul 2022 17:05:00 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7C58E384068
	for <lists+usrp-users@lfdr.de>; Sat,  9 Jul 2022 11:04:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1657379098; bh=vDN8NiFkun7irOZCGFVHW/ejwkkhDKULzgP0ZkPoPq8=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=iGxZj0i5iBITCkimXdMtn5tsd7SuDgu1QtDBY/lC2mThFODJjRHAGVskmCOQFooxy
	 8ZVjKfYsZFVdhPud9byCOTZ3jCOm9uJzEtzuJzNpuu33sI0ckmcY2bbyCuIAFJ5HeB
	 /g67FWJd2YLqu3FAZnxj6rjMu/UghX4SnEkoo8zmtKRxwByXx0Xd0+QWYBswxv5gs8
	 QgGuvV5NPIc0MFJxVnO6GvPGTO5o/olBcALUIX5b+e/qfoPKoeby/EDtXJg+SJHvd0
	 t2v0Y5EtHvUJ1mL1iTRSgQFzKO+75HOUioWZJQT1hJSRHbDMznR7yz/XuixDT3L08S
	 +c2PoHk2dBilg==
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	by mm2.emwd.com (Postfix) with ESMTPS id E5B01384068
	for <usrp-users@lists.ettus.com>; Sat,  9 Jul 2022 11:02:45 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="UixwClMv";
	dkim-atps=neutral
Received: by mail-ej1-f44.google.com with SMTP id l23so2137153ejr.5
        for <usrp-users@lists.ettus.com>; Sat, 09 Jul 2022 08:02:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=rmQ6cia2NW0INnMI+yr7MuVHQeFGqT6Zlv+h1bxh8Xo=;
        b=UixwClMvM/bQyKBm/9eBQ5vmdWcg6p9747GvVxlCiRD6vWjlud9gJAqZ7wx4fcMtGa
         qhXGp/cEQNj0Ks2ty0ZrINRhvrh1FLIbHbTSEOp3ONWir2KhwRuewn8oNcRMoSm+3s6e
         i+Kc9SsHNeVe8KC5kNRSM5KTFpDwSlHOL6yaIdCqn/fp603Qi/wDLBlk8SUII9AvZKJ7
         6iONzni3sY3nJmv43KRTP1UZzCOvlNnoNISTDE6KABw5LHB1WHzir/+GzssvFNxXutPL
         J9VQ38iDkg8xQl62yIHdms7D3V1kfl15js7QvtFm3CUwFraroHED9REXhn2HeWd36vad
         RthA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=rmQ6cia2NW0INnMI+yr7MuVHQeFGqT6Zlv+h1bxh8Xo=;
        b=ULfLwmwD5loVgHWvJNgCLNvT2VH3rWlwjuy7tFmJQucH9gH4o6gPBEtYMWPuxDJz7j
         MJUZ0tYDDRtuJzttXiSevmL9X/eTz3lvNgZ6a775w7VXSSpqu/PCP2Yr2n1vYItzs7+P
         Nx59zB6tMqGyLJrIkaXzX4s4oOePNUpBdr1LrgRglSyrAfyWxXq8wydgQQ8KSX/ev4WQ
         iIP882HIzapxkuhH3G/8KFU2p/w4uhXYUkenABPzEssAJDX8OvMejgHsRGVpaqJK7erh
         o/P8wQXQB0IMQ2dzZUdltHC7UQHe6tnyG/Vu83gfFGpcAJByDdcNFcUF9ADt++whseSP
         gi3A==
X-Gm-Message-State: AJIora8wMfnvmjPtYWn1FY/0RQOlohWHDZzWWltCzZg37Zcfq1JZrawO
	j6apHeKMVn51fiO6QfXJVS30a0XPiIAIVV0W7b5GLwno
X-Google-Smtp-Source: AGRyM1toBqn5aF/M/YVrTNf94xEr9bpqCI1sL/gibeuIhTkPgWgz5icIksgOzmszaDvbBM9/iYKIS72rEwB5lLZJrV8=
X-Received: by 2002:a17:906:38ce:b0:715:8483:e02e with SMTP id
 r14-20020a17090638ce00b007158483e02emr9410748ejd.442.1657378964933; Sat, 09
 Jul 2022 08:02:44 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=S3PvfCKbWK0S5eae5hZjQSoVnZPhmAHcs5VLYopU9Uh0GYA@mail.gmail.com>
 <CAAxXO2F7LkXVLBoeUw6-24B50BfyUnMWp7HOWOcGNt9gNrHnog@mail.gmail.com>
In-Reply-To: <CAAxXO2F7LkXVLBoeUw6-24B50BfyUnMWp7HOWOcGNt9gNrHnog@mail.gmail.com>
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Sat, 9 Jul 2022 18:02:33 +0300
Message-ID: <CAAxXO2EvypwZP2m=45_tLg-tmRdfgQyPf42UARCu1Bbad61jwg@mail.gmail.com>
To: sp <stackprogramer@gmail.com>
Message-ID-Hash: QW7Z2OGR2S3X4L6NG2VPUFJCV7BVUOMC
X-Message-ID-Hash: QW7Z2OGR2S3X4L6NG2VPUFJCV7BVUOMC
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How use convert class in UHD to convert complex float to complex sint16?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QW7Z2OGR2S3X4L6NG2VPUFJCV7BVUOMC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Correction> These functions work on integers.

So they go as:
int16 data = htobe16(le32toh(int32 data))
Or the associate functions,
htonl, htons

So you need to already have converted your floats to ints...
If in doubt, test them first on a single data...
Sorry about the confusion.

Nikos

On Sat, Jul 9, 2022 at 5:36 PM Nikos Balkanas <nbalkanas@gmail.com> wrote:
>
> Hi,
>
> I don't know about gnuradio classes:( Maybe you should ask them...
> But in C, I would use le32toh, I assume gnuradio is in little endian.
> and then htobe16 to get for uhd:
> uint16 data = htobe16(le32toh(float 32 data))
> I assume this already does ceil or floor, so your data needs to be
> already in the right scale:)
>
> HTH
> Nikos
>
> On Sat, Jul 9, 2022 at 4:57 PM sp <stackprogramer@gmail.com> wrote:
> >
> > I know that data in USRP on FPGA is in format big-endian sint16, but in Gnuradio data is in format complex float 32...
> > I found these links
> > The conversion encompasses several elements. The most obvious is that of the data type: Most FPGAs use integer data types, the most common being complex 16-bit integers (16 bit for I and Q, respectively). If the user wants his data in float, the converter casts the data type and also scales the data, typically such that the full dynamic range of the 16-Bit integers is mapped onto the float range of -1 to 1. The converter also handles the endianness: On the network, data is usually stored as big-endian, whereas most platforms store data internally as little-endian.
> >
> > https://files.ettus.com/manual/classuhd_1_1convert_1_1converter.html#a371906249b8bd546b98bd0a867e70c88
> > https://files.ettus.com/manual/page_converters.html
> >
> > According to them, I want to use the Convert class to convert complex float 32 to sint16....
> > But my program is can not run successfully, Anyone can guide me on How should I use the Converter class...!!!
> > Thanks in advance
> >
> >> #include <uhd/convert.hpp>
> >
> >
> >
> >>
> >>  int main()
> >>
> >>    {
> >>
> >>    int16_t *in_p;
> >>
> >>    float *out_p;
> >>
> >>    *in_p=1234;
> >>
> >>    uhd::convert::converter::input_type in(in_p);
> >>
> >>    uhd::convert::converter::output_type out(out_p);
> >>
> >>    uhd::convert::converter::sptr convert;
> >>
> >>    convert->conv(in,out,1);
> >>
> >>    std::cout<<*out_p;
> >>
> >>       }
> >
> >
> > _______________________________________________
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
