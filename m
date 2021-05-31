Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A875E395AD1
	for <lists+usrp-users@lfdr.de>; Mon, 31 May 2021 14:44:58 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9B6353800A9
	for <lists+usrp-users@lfdr.de>; Mon, 31 May 2021 08:44:57 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Br4L203l";
	dkim-atps=neutral
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
	by mm2.emwd.com (Postfix) with ESMTPS id F2B89383CC2
	for <usrp-users@lists.ettus.com>; Mon, 31 May 2021 08:44:05 -0400 (EDT)
Received: by mail-qt1-f180.google.com with SMTP id k19so7826717qta.2
        for <usrp-users@lists.ettus.com>; Mon, 31 May 2021 05:44:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to:content-transfer-encoding;
        bh=8zoyOSG6Qs7AncncZzsoRfLnoXS3yL9FzlhJIkiNfJ8=;
        b=Br4L203lMRXe4YJEG+4rfTqozz4wHTBa33fZC/tKHjy5mmi9ZN7mikN586zIBT3Yae
         My1HuIHgsibm0R/LtvIzFqnhhDmekR6FfwP9bRon7htJOdaCvdxcvVAXwLQpTjWKwvV1
         jDXpfDIOf6wx5kSyvqIgn5kSIwQN5M6+k7cvCPppYGNfSmQwZN2jiayIWSWMp5DSfUAv
         6/JQzb34cFoCSaUb2MmFKRk+QZtEov3uQPkyrGgANM7xlN27aMjfyGNPJ8HGE6KpLhWP
         s1LXBK6RPUq6irxnSkGLNl372lAfvspsegZRCPRedR0r1GuD+6kSa2CEv5snbcPfD+mj
         gRFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:references:in-reply-to:content-transfer-encoding;
        bh=8zoyOSG6Qs7AncncZzsoRfLnoXS3yL9FzlhJIkiNfJ8=;
        b=AJ7Dun5djnL8aRqjq7THTGfbyGkTGBbMKWDANH+IOU8zdV1OM23PYGMVAmK75OosIz
         Bsu/GQ4L0gCBS+jePn/+MqJA7kIQ3dLUWMuK4XPRjQFi6ALdyyTfzDw79+6EuaePsdaH
         6CvDF4QQJhqWnc+2Ed4wDuDbLfoXJKvjlukU/rMskGZNiGuMAPuWtcQAQcJXwtY0GIWg
         oRriAAts89t6lx1NapJV2zelNk4so0OEs0qnzNLZDXM6CRYxBLewks7CtjY26SYg1c08
         hwkS7ia7HMuGl5FC3zUE5BrOxiVMm/JY0ujob405gkj1zuTMEL96QVe/CWiNf+czA33h
         vx7Q==
X-Gm-Message-State: AOAM530/BFmoghH1OGi7gZkLGQJ0m1+woWzbN6tliWEPMnY9SoF+PIZ9
	vp/QqT3exc/K5cCRTXscxFQluoccuXg=
X-Google-Smtp-Source: ABdhPJzAcbpyjTRCmiou87YPbRJvhsM7YU6M5nHakBIw63s3bbmovd9yWoYLIRmlmS2cRNQo4PZVoA==
X-Received: by 2002:a05:622a:3cd:: with SMTP id k13mr8417172qtx.388.1622465044822;
        Mon, 31 May 2021 05:44:04 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id q190sm7678636qkf.133.2021.05.31.05.44.04
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 31 May 2021 05:44:04 -0700 (PDT)
Message-ID: <60B4DA13.5060601@gmail.com>
Date: Mon, 31 May 2021 08:44:03 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAOjuhWmATZti9f1zibrUXiLv6JOz+FDosWm54df_yP8GHKyG9Q@mail.gmail.com>
In-Reply-To: <CAOjuhWmATZti9f1zibrUXiLv6JOz+FDosWm54df_yP8GHKyG9Q@mail.gmail.com>
Message-ID-Hash: E4VDU6GJ4TM3RG5PGVFUNTLVSO7RRTRO
X-Message-ID-Hash: E4VDU6GJ4TM3RG5PGVFUNTLVSO7RRTRO
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Samples complex<short> vs complex<float> emulating
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/E4VDU6GJ4TM3RG5PGVFUNTLVSO7RRTRO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 05/31/2021 08:30 AM, Alexey Silyuk wrote:
> HI everybody, I am new at mailing list.
> These days I am writing an emulator for emulating tx/rx streams based 
> on uhd 3.15LTS
> I am using device usrp2 device from uhd/lib.
> As I saw in examples (rx_samples_to_file), I am creating a mock 
> streamer ( taken from uhd tests ).
> and now i want to push samples inside the buffer.
> I see that i can define type of samples, if am using 'short' type of 
> samples, I am creating uint32_t variable, 16 MSB i put real part of 
> sample, and 16 LSB i put imaginary part of sample (i am using little 
> endian)
> After that i am calling usrp->recv() and i get samples as i defined ( 
> spp is 2000)
> (0,0)
> (2,2)
> ....
> (1999,1999)
> as expected, according to data I push to the mock buffer.
>
> now while i want to use type 'float' i am using for example
> float real = 1.5
> float imag = 2.5
> and trying to push sample to the mock buffer, i am doing:
> buffer[0] = (uint32_t)real;
> buffer[1] = (uint32_t)imag;
>
> and expecting to get after calling usrp->recv()
> (1.5, 2.5)
> but i get incorrect result (convertor settings: cpu_format "fc32", 
> otw_format "sf16" )
>
> i am printing real and imag parameters as bitset<32> and see in real 
> part, in 16 LSB part of result, my 16 MSB bits from sample value 1.5, 
> and in imagine part zeros, in next sample i see in 16 LSB part of 
> result, 16 MSB bits of sample value 2.5. I mean one sample i push to 
> buffer uses whole sample after calling recv()
>
> P.S i set scale factor to 1.0
>
> What am I doing wrong to use the type 'float' and 'double' for mock 
> samples?
> I am new at usrp so I don't understand what samples I should use, will 
> be glad to get references.
> Thanks
>
>
Your OTW format is still SC16 -- normally only the *HOST* side uses 
floating-point and no actual USRP devices that I'm aware of can
   support floating-point *ON THE WIRE* (OTW).

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
