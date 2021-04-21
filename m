Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D3A0366A9C
	for <lists+usrp-users@lfdr.de>; Wed, 21 Apr 2021 14:18:13 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6566838403F
	for <lists+usrp-users@lfdr.de>; Wed, 21 Apr 2021 08:18:11 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="sel7MO89";
	dkim-atps=neutral
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	by mm2.emwd.com (Postfix) with ESMTPS id C2A73383E90
	for <usrp-users@lists.ettus.com>; Wed, 21 Apr 2021 08:17:19 -0400 (EDT)
Received: by mail-lj1-f179.google.com with SMTP id u25so9136451ljg.7
        for <usrp-users@lists.ettus.com>; Wed, 21 Apr 2021 05:17:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=qPS7ppJZb685Pa8328oN19jZg08UoLvY1ASxMfForJs=;
        b=sel7MO89Mf8tdjUTpQ/CvIHtrtpf/UftcESJfj0jnZzJ7Zmq8L0vYr+izMjWUvFVjk
         kIebPKRRHrQdh6Zuinb/xgXqBFjTfEzJbIq0G4N2F66YpQ7+AvsgT2YjuNE78x1CcoX3
         bCVdZoBTtBMtrXCB2+u/VS+fIvO+2/idOoEk2XVrzUM1apyvrglEVsXzLU3wBM9UWltO
         JruGqFUaXuf6BgjW/GlkO1sayQR0vfpsXbsFv6Bsir4RyQYk4arX+V7xvUCWU8XGlcoM
         3ijtq29/xXqbU232A5MXzymAiwxIqohL8BJeBSqVhIRvDpQMYFcP4iDM76fpSmBB5uJ+
         j6Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=qPS7ppJZb685Pa8328oN19jZg08UoLvY1ASxMfForJs=;
        b=e8ubljqOeBB50ceNedjWQy/kyKGo+D9K5nhxooYKZHa+JFcM/Y+2zAfR9zEVGHq6WV
         R+ZhlWLWgUNv/r70s4lgqP2YDKw6+wmS/i0d8+VJcdHMzvzRwfk3y4Vu4yulpSVq/MFj
         JYXWnYMA4uq8SzO0xzuOnzndsxjNirEW1rxmJh1jgOBUY63f90ukbRltjiq6oCh3pybz
         RJad85E7lsJ86J5+ayizKkEBjN6VkQxaiaVW9G6ffmtF+Do4CFdRoRJAz3rfaJ+Y5w6a
         jou52NMYtoB3t89Sg8zjdcstBwAh/TcG0s59uPmHUepGb0gY9MR1rFn0eoKbjEbBX1Bt
         kwmg==
X-Gm-Message-State: AOAM532lX6Z5Gu655txQlgJZ80UpRNoCHXi5hYWlmkkJFih9G6VYFQIQ
	bgyySqi50Jbci9JHtZwwXs4/9/c9NbgeeeESYT3Zx9aAZouW8A==
X-Google-Smtp-Source: ABdhPJyMoXbNxI7epiwq4jgZta/T7j5gKAvPeqHRgsbi+2av0Q+AR4y1cd0RopEh8BpjhfBOq4WFYXS1jGZl9ASV+KQ=
X-Received: by 2002:a2e:a487:: with SMTP id h7mr9108019lji.84.1619007438239;
 Wed, 21 Apr 2021 05:17:18 -0700 (PDT)
MIME-Version: 1.0
From: Margaux Bougeard <margaux.bgd1@gmail.com>
Date: Wed, 21 Apr 2021 14:16:06 +0200
Message-ID: <CA+SYr1-=KD4d86B6m9Ru-pGYd3Eok-mW+L2JiMPU1sL0xZpejQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: GSV2XMOCJ7TONHMY2J2MUTKCAONKUMJY
X-Message-ID-Hash: GSV2XMOCJ7TONHMY2J2MUTKCAONKUMJY
X-MailFrom: margaux.bgd1@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Transmitter thanks to USRP E312 with high sample rate
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GSV2XMOCJ7TONHMY2J2MUTKCAONKUMJY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5930565915250486801=="

--===============5930565915250486801==
Content-Type: multipart/alternative; boundary="0000000000003eb96305c07a8b56"

--0000000000003eb96305c07a8b56
Content-Type: text/plain; charset="UTF-8"

I want to use the USRP E312 to transmit a sequence, with IQ data,
continuously. For that I use UHD 4.0.0.0 and I created a Python script that
runs on the USRP. For my application, I need to use the maximum sample rate
indicated by the datasheet (61,44 MHz). However, the continuous
transmission of my sequence only works correctly for a low sample rate. For
the transmission I use the function streamer.send(data, metadata) of the
UHD, that I put in a while loop to have a continuous transmission. I
noticed several problems :
- From a sample rate of 1 MHz, the USRP sends me back 'S's; I saw that it
indicates a "Sequence error on Tx"
- If the size of my data in the send() function exceeds 364, I also get
'U's. So I have underflow.

What is the procedure to create a transmitter with a sample rate of 61,44
MHz with the USRP E312 ? I wonder if I am not limited by the sample data
transfer rate of ARM processor.

Thanks for your help.

--0000000000003eb96305c07a8b56
Content-Type: text/html; charset="UTF-8"

<div dir="ltr">I want to use the USRP E312 to transmit a sequence, with IQ data, 
continuously. For that I use UHD 4.0.0.0 and I created a Python script 
that runs on the USRP. For my application, I need to use the maximum 
sample rate indicated by the datasheet (61,44 MHz). However, the 
continuous transmission of my sequence only works correctly for a low 
sample rate. For the transmission I use the function streamer.send(data,
 metadata) of the UHD, that I put in a while loop to have a continuous 
transmission. I noticed several problems :
<br>- From a sample rate of 1 MHz, the USRP sends me back &#39;S&#39;s; I saw that it indicates a &quot;Sequence error on Tx&quot;
<br>- If the size of my data in the send() function exceeds 364, I also get &#39;U&#39;s. So I have underflow.
<br><br>What is the procedure to create a transmitter with a sample rate
 of 61,44 MHz with the USRP E312 ? I wonder if I am not limited by the 
sample data transfer rate of ARM processor.
<br><br>Thanks for your help.

	
	
	
	</div>

--0000000000003eb96305c07a8b56--

--===============5930565915250486801==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5930565915250486801==--
