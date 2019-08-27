Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 223459DC64
	for <lists+usrp-users@lfdr.de>; Tue, 27 Aug 2019 06:22:27 +0200 (CEST)
Received: from [::1] (port=46218 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i2Szw-0001mN-SM; Tue, 27 Aug 2019 00:22:24 -0400
Received: from mail-ed1-f49.google.com ([209.85.208.49]:40800)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <timothy.kurp@gmail.com>)
 id 1i2Szs-0001gg-UT
 for usrp-users@lists.ettus.com; Tue, 27 Aug 2019 00:22:21 -0400
Received: by mail-ed1-f49.google.com with SMTP id h8so29487889edv.7
 for <usrp-users@lists.ettus.com>; Mon, 26 Aug 2019 21:22:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QC4ma1pGhRfsfmZbBKt9FMvllAzo5GotD8Wb49kbyOE=;
 b=Ecx7DBHzJWaHKLBcUdVugwt1mX/oDTfr/xc3oWvGe0AJ2qB10nODOahEKFta1iLKfJ
 YaOePzbNw2bIEkaMhgkk8ojxMkrUCOQsWhUNvcvpdpfV2Kch7cvGSZVtcgkWfPzZ8gl6
 QfNfFU43QhgWX/z4D7SNxFjUSuoNq+FUv0/iVkUxjJlmOmS4vnXSL9MmytI/dDhis2pO
 tC2Unu8IHGd0C9UIS8ZBER5LEQvpm/mQb0xwgVqLFOrrdWcDB6fEqKmXLKTc16tY2Hht
 wTHxIo+MZBve8I2tKzTXdlh2lubdpjiZ8rzZ2DwBkXL/MO8krhLBahhKvRrhmKnEpPsU
 /rQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QC4ma1pGhRfsfmZbBKt9FMvllAzo5GotD8Wb49kbyOE=;
 b=mb12IAR1Z2IasevcuXoLVQPxFrTsY4okMe2EoJeOBFNR7r6+AlH+09lVf1eWEgjLj7
 Ihe3OMTFlXntmq7iMn+S79H8JpG2fGlGc0tvH1e2BsqYCwIi4fIGEs56n5lU/nzqjabz
 ev6jR+t2y+OQYw23Ec/oPFWGOGUloigtoo/dQTAFSY/q8mpd3+KUkk64TNMC7Qb/HIBY
 uF1hremPFi7W688Ezzeay+Emm64cgvZa+Uaxy8AdVHdH154AYZgwQVIqVO4qxyntCMJO
 SO1D7msIz+c/l+UiqmzmzqflhAuYKg6sCo6ZOfUVfz7kCNxuX6pe+8uPd2AuPFyCiBE7
 20uA==
X-Gm-Message-State: APjAAAVwQuvmOebIh58GLeXdHnMYzADpCizCDvhedWtFwv7HZO0nQORa
 27znmzxTFHLUGNIAQ9al7Y1Nz/uGqVfhnKWBBLmVug==
X-Google-Smtp-Source: APXvYqz35Aub0kudHu4h3MEZ3YmO5d/FHzwIvcvvkVxBBKgM6/AvkfENNOhnqbPkoKtfI4xUtyGNtfnMRdDPAw23ct0=
X-Received: by 2002:a50:9724:: with SMTP id c33mr22549308edb.193.1566879699832; 
 Mon, 26 Aug 2019 21:21:39 -0700 (PDT)
MIME-Version: 1.0
References: <CABsifTm54UOtwEfSp8nEzTTw2518qHqSBj7fbZsB-fvvbNxGkA@mail.gmail.com>
 <CAL7q81vDWQziDHbg8FoyE0frY63HnRV=04qUejq3-uS6RUTieA@mail.gmail.com>
In-Reply-To: <CAL7q81vDWQziDHbg8FoyE0frY63HnRV=04qUejq3-uS6RUTieA@mail.gmail.com>
Date: Tue, 27 Aug 2019 00:21:29 -0400
Message-ID: <CABsifTmn7kmMusP0miNJW2hPbu95cN=ZhAtpNqscwVG7kEZA3A@mail.gmail.com>
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Subject: Re: [USRP-users] RFNoc Testbench / EOB
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
From: Timothy Kurp via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Timothy Kurp <timothy.kurp@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3571159067364718911=="
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

--===============3571159067364718911==
Content-Type: multipart/alternative; boundary="000000000000ea14c20591119b3d"

--000000000000ea14c20591119b3d
Content-Type: text/plain; charset="UTF-8"

Thanks! I will look at that example.

Tim

On Tue, Aug 27, 2019 at 12:15 AM Jonathon Pendlum <
jonathon.pendlum@ettus.com> wrote:

> Hi Tim,
>
> Look at noc_block_fft_tb.v for an example on how to operate on a 32-bit
> sample by sample basis. Unfortunately, if you want to do sizes smaller than
> 32-bit, you'll need to write your own version of send()/recv() or
> push_word()/pull_word() from sim_rfnoc_lib.svh.
>
> Jonathon
>
> On Tue, Aug 27, 2019 at 1:05 PM Timothy Kurp via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hey Users!
>>
>> I think this may be a possible deficiency in the test bench architecture,
>> or perhaps I just don't know how to instrument it properly. I have a custom
>> block that performs a 2:1 rate change roughly, performing compression of
>> the 16 bit I/Q from the radio down to a 16 bit word that is compressed, I
>> won't describe how. There is a corner case if EOB occurs when there is an
>> odd number of samples received from the radio. I have handled this by using
>> simple mode = 0, manipulating cvita header manually and throwing tlast to
>> make packets, with success. The noc block works, but I am struggling with
>> how to exercise the corner case in the testbench.
>>
>> From what I have seen, the testbench only allows for EOB to be
>> manipulated on sample counts that are a multiple of 2 (send() operates on
>> 64 bits, or 2 samples of 16 bit I/Q). We have looked at the source and
>> there doesn't seem to be an easy way to throw EOB/TLAST on odd samples.We
>> also think it is not guaranteed that this will never happen from the radio.
>> Thoughts?
>>
>> Tim
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--000000000000ea14c20591119b3d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks! I will look at that example.<div><br></div><div>Ti=
m</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Tue, Aug 27, 2019 at 12:15 AM Jonathon Pendlum &lt;<a href=3D"mai=
lto:jonathon.pendlum@ettus.com">jonathon.pendlum@ettus.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">=
Hi Tim,<div><br></div><div>Look at noc_block_fft_tb.v for an example on how=
 to operate on a 32-bit sample by sample basis. Unfortunately, if you want =
to do sizes smaller than 32-bit, you&#39;ll need to write your own version =
of send()/recv() or push_word()/pull_word() from sim_rfnoc_lib.svh.</div><d=
iv><br></div><div>Jonathon</div></div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Tue, Aug 27, 2019 at 1:05 PM Timothy Kur=
p via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=
=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hey Users!<div><br><=
/div><div>I think this may be a possible deficiency in the test bench archi=
tecture, or perhaps I just don&#39;t know how to instrument it properly. I =
have a custom block that performs a 2:1 rate change roughly, performing com=
pression of the 16 bit I/Q from the radio down to a 16 bit word that is com=
pressed, I won&#39;t describe how. There is a corner case if EOB occurs whe=
n there is an odd number of samples received from the radio. I have handled=
 this by using simple mode =3D 0, manipulating cvita header manually and th=
rowing tlast to make packets, with success. The noc block works, but I am s=
truggling with how to exercise the corner case in the testbench.</div><div>=
<br></div><div>From what I have seen, the testbench only allows for EOB to =
be manipulated on sample counts that are a multiple of 2 (send() operates o=
n 64 bits, or 2 samples of 16 bit I/Q). We have looked at the source and th=
ere doesn&#39;t seem to be an easy way to throw EOB/TLAST on odd samples.We=
 also think it is not guaranteed that this will never happen from the radio=
. Thoughts?</div><div><br></div><div>Tim</div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--000000000000ea14c20591119b3d--


--===============3571159067364718911==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3571159067364718911==--

