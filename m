Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 123A03AFAB5
	for <lists+usrp-users@lfdr.de>; Tue, 22 Jun 2021 03:49:07 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C61B7383DD4
	for <lists+usrp-users@lfdr.de>; Mon, 21 Jun 2021 21:49:05 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="L8x/IRuF";
	dkim-atps=neutral
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	by mm2.emwd.com (Postfix) with ESMTPS id A2A0D383692
	for <usrp-users@lists.ettus.com>; Mon, 21 Jun 2021 21:48:13 -0400 (EDT)
Received: by mail-qt1-f182.google.com with SMTP id r20so15010738qtp.3
        for <usrp-users@lists.ettus.com>; Mon, 21 Jun 2021 18:48:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to:content-transfer-encoding;
        bh=IX+U8BBbpoCrN15/bqVzrLULKi/Aw6hopfR5lWZblxE=;
        b=L8x/IRuFx9DKZXxyR5Yrgct3BtOmHtzVTvl8KN5NWG4BHg6ANP5qSByswREuRcb6cD
         ApDlnztTcOFMIX02V3BB8fvSarxURgJO8NDE4IcqSOwMODhdGLfAknpeIeofpy3jo1FQ
         p366c18yP2eRurfeCXp5ORwaCCJrgyDYRXNnci2WTYE3yxjbyYjeEQmyObf99PS/5/qu
         Nxiqm2LqZQv36B2ddm3pVxSKmIAIvkZBxVy/2EkHGcCDDJP7TbVdE/PRiuPi/TJ7W2Dv
         uOYrQsc0It/Hm3nBO1lhalFIvvnqIp+LBFfklHy43XTxUm6ln/MKUs7LCSY0M5C5aCNZ
         I9HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:references:in-reply-to:content-transfer-encoding;
        bh=IX+U8BBbpoCrN15/bqVzrLULKi/Aw6hopfR5lWZblxE=;
        b=KBT0gZM3qWolUbbI0W79txijmIWeHGP7dPeqL5VJvkE6b2D9ouebM+q+JGPBrSLq5g
         Hhl3mr70Mo6Zpl1XxnYALQ8r6M87LfOLBp/d/qCR2N5+jqfMoegcdNSCYm1Dj0k3K9i2
         dqZ5ekplGS/C7pMrcHMfPcSsVoD2ghIWAqeKYgGsRwUKoa4a+qJIVYdHCkCavp8loMJn
         Vg3VWj0yasX1JAUhnz9yhAWoimgoJsRE463+aA3aUkX1/PKF4WVQpHXtP2y97h7c9bui
         X4IksxgpV76POCrJ6dGQ2hu3DCyHdk93AjD9ZKmi0JjybrqrNF1J5k5msZZPfZjqWXOe
         YiXQ==
X-Gm-Message-State: AOAM530eT8xRau65oDvi90fmVhYU2Cy4GUElmrQpNY6Cs/7WjlSskN+X
	wj2rYa+pkShlMlHzUvz4coGShCBqJR8H9Q==
X-Google-Smtp-Source: ABdhPJyFDrm8MBlVVG42GINClotu5zzm+kzOAGU3FUrhc+rQITbOvLF71CQYOaJ4B7fmsnakw3lnVw==
X-Received: by 2002:ac8:140a:: with SMTP id k10mr1434812qtj.190.1624326492913;
        Mon, 21 Jun 2021 18:48:12 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id 206sm11908040qke.67.2021.06.21.18.48.11
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Jun 2021 18:48:12 -0700 (PDT)
Message-ID: <60D1415B.4090206@gmail.com>
Date: Mon, 21 Jun 2021 21:48:11 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <BYAPR06MB53523BE92F6B1451D1BD12BDD90A9@BYAPR06MB5352.namprd06.prod.outlook.com> <e1133a28-c110-2368-18e0-aa5ac38246b1@ettus.com> <BYAPR06MB5352256E7E9DB6E9A4035DF7D90A9@BYAPR06MB5352.namprd06.prod.outlook.com>
In-Reply-To: <BYAPR06MB5352256E7E9DB6E9A4035DF7D90A9@BYAPR06MB5352.namprd06.prod.outlook.com>
Message-ID-Hash: Z72GFHZXNW5VYVZQQPAMIQ2CBP4X2MGE
X-Message-ID-Hash: Z72GFHZXNW5VYVZQQPAMIQ2CBP4X2MGE
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Adding Timestamps to B210 RX Samples
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Z72GFHZXNW5VYVZQQPAMIQ2CBP4X2MGE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="windows-1252"; format="flowed"
Content-Transfer-Encoding: quoted-printable

On 06/21/2021 07:33 PM, Alex Bouvy via USRP-users wrote:
> Hi Marcus,
>
> Got it, makes sense! Thanks for the info.
>
> Regards,
> Alex
We should perhaps for a moment consider what it would mean for the=20
hardware to adorn every single sample with a time-stamp.
   Over-the-wire samples occupy 4 bytes (16-bit I 16-bit Q). Timestamps=20
are (AFAIR) 64 bits or 8 bytes.  If every single sample
   were adorned with a time-stamp *on the wire*, that would *triple* the=20
occupied bandwidth of samples flowing over the wire--meaning
   less bandwidth would be available for actual samples.

Similarly, if UHD adorned every sample as it arrived, there'd be=20
considerable ballooning of memory occupancy, and memory-bandwidth
   consumption.  Putting in all this overhead to avoid a simple=20
calculation on the part of the application writer would be bad
   engineering, IMHO.


> -----Original Message-----
> From: Marcus M=FCller <marcus.mueller@ettus.com>
> Sent: Monday, June 21, 2021 5:31 PM
> To: usrp-users@lists.ettus.com
> Subject: [USRP-users] Re: Adding Timestamps to B210 RX Samples
>
> Hi Alex,
>
> that's the right (and only) approach: Metadata contains the time stamp fo=
r the first sample in a packet; the rest is counting!
>
> Best regards,
>
> Marcus
>
> DISCLAIMER: Any attached Code is provided As Is. It has not been tested o=
r validated as a product, for use in a deployed application or system, or f=
or use in hazardous environments. You assume all risks for use of the Code.=
 Use of the Code is subject to terms of the licenses to the UHD or RFNoC co=
de with which the Code is used. Standard licenses to UHD and RFNoC can be f=
ound at https://www.ettus.com/sdr-software/licenses/.
>
> NI will only perform services based on its understanding and condition th=
at the goods or services (i) are not for the use in the production or devel=
opment of any item produced, purchased, or ordered by any entity with a foo=
tnote 1 designation in the license requirement column of Supplement No. 4 t=
o Part 744, U.S. Export Administration Regulations and (ii) such a company =
is not a party to the transaction.  If our understanding is incorrect, plea=
se notify us immediately because a specific authorization may be required f=
rom the U.S. Commerce Department before the transaction may proceed further.
>
> On 22.06.21 00:24, Alex Bouvy via USRP-users wrote:
>> Hello,
>>
>>  =20
>>
>> In the paper below, the authors say that they have set up their USRP
>> device to include timestamps for each recorded sample, but do not provid=
e detail on how this was achieved:
>>
>>  =20
>>
>> https://ieeexplore.ieee.org/document/6533293
>> <https://ieeexplore.ieee.org/document/6533293>
>>
>>  =20
>>
>> I have been looking into what is required to achieve something
>> similar. Particularly, I have been working with the source code of the
>> rx_timed_samples.cpp example provided in the UHD files, along with this =
page in the Ettus manual:
>>
>>  =20
>>
>> https://files.ettus.com/manual/page_sync.html
>> <https://files.ettus.com/manual/page_sync.html>
>>
>>  =20
>>
>> Looking through the rx_timed_samples code, it appears that the
>> metadata associated with the recv(..) function contains a time_spec
>> field which is the timestamp for the first sample in the IO stream,
>> but it's not immediately clear to me how that might be used to
>> timestamp all of the samples, which makes me think this may be the wrong=
 approach. Is there a simpler method to do this that is known?
>>
>>  =20
>>
>> Tangentially, I've also looked into adding the timestamps through
>> GNURadio, but there does not appear to be a way to do this as far as I c=
an tell.
>>
>>  =20
>>
>> Any help is much appreciated.
>>
>>  =20
>>
>> Thank you,
>>
>> Alex
>>
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com To unsubscribe
>> send an email to usrp-users-leave@lists.ettus.com
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com To unsubscribe send=
 an email to usrp-users-leave@lists.ettus.com
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
