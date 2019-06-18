Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0077C4A2E4
	for <lists+usrp-users@lfdr.de>; Tue, 18 Jun 2019 15:56:50 +0200 (CEST)
Received: from [::1] (port=49938 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hdEbR-00044b-J1; Tue, 18 Jun 2019 09:56:49 -0400
Received: from mail-io1-f46.google.com ([209.85.166.46]:34231)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <dbc23910@gmail.com>) id 1hdEbN-0003wQ-9y
 for usrp-users@lists.ettus.com; Tue, 18 Jun 2019 09:56:45 -0400
Received: by mail-io1-f46.google.com with SMTP id k8so30108165iot.1
 for <usrp-users@lists.ettus.com>; Tue, 18 Jun 2019 06:56:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sKZSqVS+2tx9b7N8LUerKWbQwiB5/GGadrPAnmE5sHA=;
 b=qnXKjRPQSJxge5/LzsS7lcEFMC1ZDbss7BmIUD2Wl4RGoIdlSv+lnvied8x+yg5QWh
 MIU6JiS25Sl7e44Bko0+ddtg3nQCfcDvi+XU2Pse2YrMzoHpw9ur7ylE9Jqe/GG3LTSa
 liuBVWB7K34WrqCW0xIigYXhjGmFkld61TDugeMJfzNTraDIB4R/CHD1fIEtV9IRA5Ka
 R6tgjhfvJnKcfnxN1aoezzRVS0JQq6BqwKCwo2nBFEN78LoBQkejLmidA28rGNQ4kG2u
 dBJHhrKRI34vkeO/pFBgu9sKmxiJEdo749Ojx7R+sfAmxAxgFS+PWzlGtqmpFMWvv/EK
 ke+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sKZSqVS+2tx9b7N8LUerKWbQwiB5/GGadrPAnmE5sHA=;
 b=CFHUIeSo/896rFkYabEfPCLN1We4Z87g0WUnWIdT5VPzbVBKSBGG0LQz5eeOWIFOYH
 DTTUcwTM2EXHZbJmsv9OznH0U9s1EiP9D4wtcC2/AI8woyG6OZSEv+3DsDtoesDdvMRa
 Cw/wFsLaQXehCqqUH/dIA+/s7bdjC/HTjWAhQsUHIY+Ha4nP74noBWV6H/qRfb5oEO3M
 +iDRNXrFM9iFA1afzdvQVT1vkEhSBZZenfLdfujBWq4vIApmrEKL4c0nHDovBJTLMSF0
 lgN+AWcFO2s9NK0u1+jcs5uZH56xDxT6F8a9AleTJFht+kheuBGKW6pTPlKQ3C9jAALe
 UaSw==
X-Gm-Message-State: APjAAAXQkUoO5yWrHHsryNZIDkhdJnihkNXD26ipEWww/8fRB3QsQeqS
 +dEokmIOJsEreU0xfg1ViXxsEQofe0Y+tdKRflA=
X-Google-Smtp-Source: APXvYqzrrSGVWdGh9YyclEzlrR73PUMmPzL5FdG4dzFS261Sm15JTrEGNz3OMDUF5IKw3L4LpAPmD29wq1ZKVsFlPuY=
X-Received: by 2002:a6b:7602:: with SMTP id g2mr3772181iom.82.1560866164478;
 Tue, 18 Jun 2019 06:56:04 -0700 (PDT)
MIME-Version: 1.0
References: <CAO_1D1XtztkMvVKD2VG9CXFi+U492yWKakfmfaWS54Fxp5wywQ@mail.gmail.com>
 <5D07FF68.9080804@gmail.com>
 <CAO_1D1W9h1hg_182mQ5oDZbaVqHNgFnu9gjPnMZ08ZLd0eSNgA@mail.gmail.com>
 <5D080359.8070609@gmail.com>
 <CAO_1D1Web8+vG02Sqra-eBxnHTZiMEFnwc2rDzSjuL=-VryCLQ@mail.gmail.com>
 <5D08067E.90306@gmail.com>
In-Reply-To: <5D08067E.90306@gmail.com>
Date: Tue, 18 Jun 2019 07:55:53 -0600
Message-ID: <CAO_1D1V5-7c_L1HY3T0FtpWiQ+mkyxjpxaOHRgJA4=jYZqsPrg@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Subject: Re: [USRP-users] E310 Startup/Boot not working
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Donnie C via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Donnie C <dbc23910@gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2034625698653920912=="
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

--===============2034625698653920912==
Content-Type: multipart/alternative; boundary="0000000000004699ad058b99790b"

--0000000000004699ad058b99790b
Content-Type: text/plain; charset="UTF-8"

The download sizes appear to be fine, and I am not using FTP, could it be
something to do with the partitions of the microSD card? I was reading the
Ettus tutorial again and it refered to the sd card having a few partitions
one of which is a boot partition, is the image suppose to create this
partition?

On Mon, Jun 17, 2019 at 3:30 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 06/17/2019 05:27 PM, Donnie C wrote:
>
> Its definitely being written to the right place /dev folder doesnt have
> anything large under it, but how would you check if the image was
> downloaded in text mode?
>
> Some windows FTP clients default to text mode, even when downloading
> binary data.  But that would only apply if you used FTP.
>
> You sure your download didn't fail in the middle?  Compare the sizes.
>
>
>
> On Mon, Jun 17, 2019 at 3:17 PM Marcus D. Leech <patchvonbraun@gmail.com>
> wrote:
>
>> On 06/17/2019 05:09 PM, Donnie C wrote:
>> > Im pretty sure the speed grade matches so it must be an incorrect sd
>> > card burn, but as far as I can tell I followed the ettus tutorial for
>> > sd image burning, is there any extra steps involved they don't go over?
>> Bad card?  Bad card burner?  Pulled the card before the I/O had been
>> fully flushed out to it?  Downloaded the image in text mode?  Got the
>>    device name wrong when burning, and now you have a large file under
>> /dev, instead of written out to the actual card?
>>
>>
>>
>

--0000000000004699ad058b99790b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">The download sizes appear to be fine, and=
 I am not using FTP, could it be something to do with the partitions of the=
 microSD card? I was reading the Ettus tutorial again and it refered to the=
 sd card having a few partitions one of which is a boot partition, is the i=
mage suppose to create this partition?</div><div dir=3D"ltr"><br></div><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jun 17=
, 2019 at 3:30 PM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail=
.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div class=3D"gmail-m_7068035594790689265moz-cite-prefix">On 06/17/2019=
 05:27 PM, Donnie C wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div>Its definitely being written to the right place /dev folder
          doesnt have anything large under it, but how would you check
          if the image was downloaded in text mode?</div>
      </div>
    </blockquote>
    Some windows FTP clients default to text mode, even when downloading
    binary data.=C2=A0 But that would only apply if you used FTP.<br>
    <br>
    You sure your download didn&#39;t fail in the middle?=C2=A0 Compare the
    sizes.<br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr"><br>
        <div class=3D"gmail_quote">
          <div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jun 17, 2019 at 3:1=
7
            PM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.co=
m" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;
            wrote:<br>
          </div>
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On 06/17/2019 0=
5:09 PM,
            Donnie C wrote:<br>
            &gt; Im pretty sure the speed grade matches so it must be an
            incorrect sd <br>
            &gt; card burn, but as far as I can tell I followed the
            ettus tutorial for <br>
            &gt; sd image burning, is there any extra steps involved
            they don&#39;t go over?<br>
            Bad card?=C2=A0 Bad card burner?=C2=A0 Pulled the card before t=
he I/O
            had been <br>
            fully flushed out to it?=C2=A0 Downloaded the image in text
            mode?=C2=A0 Got the<br>
            =C2=A0 =C2=A0device name wrong when burning, and now you have a=
 large
            file under <br>
            /dev, instead of written out to the actual card?<br>
            <br>
            <br>
          </blockquote>
        </div>
      </div>
    </blockquote>
    <br>
  </div>

</blockquote></div></div>

--0000000000004699ad058b99790b--


--===============2034625698653920912==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2034625698653920912==--

