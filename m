Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D9D5AD8D91
	for <lists+usrp-users@lfdr.de>; Fri, 13 Jun 2025 15:47:29 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 756ED386224
	for <lists+usrp-users@lfdr.de>; Fri, 13 Jun 2025 09:47:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1749822448; bh=gbC2uon/mZg91wfYcnv4yKl9AjCjiwK0vg5smZBIBBo=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=tPtYRi8BwmNstyjLbf4ir6RXELDFGKPetMaSl5xG+9BbQX8xjvtGqiYsvv+PQfPvC
	 5HjKndS1MLifHH+5QPwnh7reEDtsDhPkUxfN4jBoVOpTB0hCyoQnn2aYdoX18oU1E6
	 5XWQnmTuHkvrO9eVa6ya1a+PeTqR0hGkzZxyEpxcjhLxvvnXxU+I9xY8Sj6uvbuuT8
	 8JyCs4rGfOSosOx83lMJbkIEl1grL+zKdL+jyTspxCFuRtJK6cKDx4ZWzCLmxHlAH5
	 CgzgFOvOb2YTg94DLOiqjLM5q40PyGM1nPBpjOslvrgGigoGRaicrXq1NmbCoYjI9T
	 KGULsObrTamPQ==
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 8229A3861CB
	for <usrp-users@lists.ettus.com>; Fri, 13 Jun 2025 09:46:49 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="GL1oRvm6";
	dkim-atps=neutral
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-ad1b94382b8so389796766b.0
        for <usrp-users@lists.ettus.com>; Fri, 13 Jun 2025 06:46:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1749822408; x=1750427208; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=h/oaF9TBQjgUTUWg5BDhdztgniWqvuK4hQpQOf6chfY=;
        b=GL1oRvm6qwzZaQX9HArePbzuCam+gGCNCfS1yrsRa1idO09DxRL8SEoctC9NS4+iAm
         vh74X1JouM0rCdVUwTOzK15dsKX7EJapCjYKx9df+DQLw/PtG4xwswN2/B+rbV/Qax4h
         6J3h3buRJ6eWEU6tw0GTzVXr8c7xL2YzJk0PTXt8gcN3PAK4eme0X7CMT584PfI1XsOv
         5DitIJfYb8ZxIG2cgn0hVH5TywadopxduzUFS30rpd+/vrCMmpfqMzprHbH3XLNQK5ME
         6Yx/E8se131uQKqkjo1X7/buRj2mWNp8rwzWXYHwtzgX8budSbJVFXaT7DXT8TviY1wo
         OcOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749822408; x=1750427208;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=h/oaF9TBQjgUTUWg5BDhdztgniWqvuK4hQpQOf6chfY=;
        b=ShiKGQqDkIT9DXbAU0jfBsauhdBig6iIrUDX5EXFqHwzo2rz0BiVqSo83L+qOTzMlG
         HfQT5kg9wHQ4xmtoT1XAZyfiHUzGsCSfn1m3MI6LVf0zIVRcNdQNfM7g6lW6vIokNBtz
         N3a8u6v3ELwbkt5H9bXwHbArzTxb8m5q05EvQHnx++EF9CCxtxojyP4if5fAcd5JoFAR
         ytqOfyPfM9iTgdA7hZaxPjZasogcXSglzlsKtlXp/U0HVACvcuKFtotPzQdFOmJF55Xc
         C7kYieNMbXrx+F7BPwxbYzIzGe94PdFrkJjbKd4FDcRLAplAOztUATfyoPbXypeN6KJz
         uJdA==
X-Gm-Message-State: AOJu0Yws1mok8iqu03m3jsiMrqwjxq1LI1G7ae8v5+JQpZzRPuXb+hdp
	9BT6/Kbami6PZHW2LQBIrg90LUkODUeQDg/667XeaCh8cOo4GcNMJtTVFaEGaNlZZ9H6N9NjCrr
	vt2i/acAB8psZNhdGOG2WDLIu7Bohbibq7vt7M8QDD5x4gnhRFlVuiwg=
X-Gm-Gg: ASbGncvIF3DIj29ZJLohL5E686bvItZ8e79CDrRkcwVC4NEn8NiREey0jwMtqSxW8L6
	R2GfFEfZgtnwaGBC8HOKx9t71bqutVGS3u69YsFck1eEjceLZ1c3hZ6nMY9sCaztr6uQwh655g9
	9P6aCVfBEH9tCcJ2L2z09SoUX3Hc8QMlAH2qfGl4BpEkJndYf9q0rKfgc2Yvs85g+xEuONBMb+l
	tA=
X-Google-Smtp-Source: AGHT+IGn9zqEPOUsF3F+Pp/EHXZB/sF9JaGTkmi4fLcGxds0dMQHYoafe+yxkBAUHoKfPh4VnKUyEmvwEdKfQ5kYvXE=
X-Received: by 2002:a17:907:3f9e:b0:ad8:8efe:3206 with SMTP id
 a640c23a62f3a-adec569eba8mr285230466b.42.1749822407601; Fri, 13 Jun 2025
 06:46:47 -0700 (PDT)
MIME-Version: 1.0
References: <WBTCYg2mY0obZphbp4U1z5hMPTfPZPsGehf2E09c@lists.ettus.com> <CAEXYVK5voDAZNqakh3ZFL6Z+r8wnMENNokpDJ7ntkQvRPkoesw@mail.gmail.com>
In-Reply-To: <CAEXYVK5voDAZNqakh3ZFL6Z+r8wnMENNokpDJ7ntkQvRPkoesw@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Fri, 13 Jun 2025 15:46:36 +0200
X-Gm-Features: AX0GCFvImCj3h4gvPoVK_SnyBOyQSkheRV6m12paF2HBDxcZnFGde6MGsJmzghQ
Message-ID: <CAFOi1A6V-hoY51--WByrj4jcpGdQDBL0wuJ+o2mpXQW31dpPHA@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: QY3COOKM3QK3BZWUMTFWV3IIWVMQW6RV
X-Message-ID-Hash: QY3COOKM3QK3BZWUMTFWV3IIWVMQW6RV
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How to access the external 1PPS clock, from GPSDO, to be used inside a custom RFNOC block?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QY3COOKM3QK3BZWUMTFWV3IIWVMQW6RV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3278170142092207728=="

--===============3278170142092207728==
Content-Type: multipart/alternative; boundary="0000000000000682af06377447b9"

--0000000000000682af06377447b9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

If you really need the PPS/timestamp, this is the right answer, but 4/5
times when users ask for access to PPS/time, they don't really need, so
make sure you're in the right category. Does your block also consume data
with timestamps? Then you probably don't want this. If you're tracking some
real (wall clock) time, then you likely do.

--M

On Fri, Jun 13, 2025 at 3:21=E2=80=AFPM Brian Padalino <bpadalino@gmail.com=
> wrote:

> If you are looking to get the radio time and the 1PPS into your block
> using the icores yaml definitions, then check the timekeeper and pps
> broadcast-listener here:
>
>
> https://github.com/EttusResearch/uhd/blob/c354764c93b49c90be08958f942b9bc=
b7704cbd5/host/include/uhd/rfnoc/core/io_signatures.yml
>
> Then check the BSP files in that same path for the BSP connection name.
>
> You'll need to make some BSP connections like:
>
>   - { srcblk: _device_, srcport: pps0,  dstblk: yourblock, dstport: pps }
>   - { srcblk: _device_, srcport: time0, dstblk: yourblock, dstport: time =
}
>
> That should give you the 64-bit time and the 1PPS.
>
> Good luck.
>
> Brian
>
> On Fri, Jun 13, 2025 at 6:12=E2=80=AFAM <anant.tripathi@technosci.com> wr=
ote:
>
>> Pretty much what the title says, our goal is to sync the timestamps to
>> the rising edge of the 1PPS signal such that they get reset exactly on t=
he
>> rising edge of the 1pps signal, and increment the count of a custom
>> metadata tag, to the outgoing stream to the UHD application that we are
>> working on.
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000000682af06377447b9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>If you really need the PPS/timestamp, this is the rig=
ht answer, but 4/5 times when users ask for access to PPS/time, they don&#3=
9;t really need, so make sure you&#39;re in the right category. Does your b=
lock also consume data with timestamps? Then you probably don&#39;t want th=
is. If you&#39;re tracking some real (wall clock) time, then you likely do.=
</div><div><br></div><div>--M</div></div><br><div class=3D"gmail_quote gmai=
l_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jun 13, 20=
25 at 3:21=E2=80=AFPM Brian Padalino &lt;<a href=3D"mailto:bpadalino@gmail.=
com">bpadalino@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex"><div dir=3D"ltr"><div>If you are looking to get the=
 radio time and the 1PPS into your block using the icores yaml definitions,=
 then check the timekeeper and pps broadcast-listener here:</div><div><br><=
/div><div>=C2=A0=C2=A0<a href=3D"https://github.com/EttusResearch/uhd/blob/=
c354764c93b49c90be08958f942b9bcb7704cbd5/host/include/uhd/rfnoc/core/io_sig=
natures.yml" target=3D"_blank">https://github.com/EttusResearch/uhd/blob/c3=
54764c93b49c90be08958f942b9bcb7704cbd5/host/include/uhd/rfnoc/core/io_signa=
tures.yml</a></div><div><br></div><div>Then check the BSP files in that sam=
e path for the BSP connection name.</div><div><br></div><div>You&#39;ll nee=
d to make some BSP connections like:</div><div><br></div><div>=C2=A0 - { sr=
cblk: _device_, srcport: pps0, =C2=A0dstblk: yourblock, dstport: pps }</div=
><div>=C2=A0 - { srcblk: _device_, srcport: time0, dstblk: yourblock, dstpo=
rt: time }</div><div><br></div><div>That should give you the 64-bit time an=
d the 1PPS.</div><div><br></div><div>Good luck.</div><div><br></div><div>Br=
ian</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gma=
il_attr">On Fri, Jun 13, 2025 at 6:12=E2=80=AFAM &lt;<a href=3D"mailto:anan=
t.tripathi@technosci.com" target=3D"_blank">anant.tripathi@technosci.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p>=
Pretty much what the title says, our goal is to sync the timestamps to the =
rising edge of the 1PPS signal such that they get reset exactly on the risi=
ng edge of the 1pps signal, and increment the count of a custom metadata ta=
g, to the outgoing stream to the UHD application that we are working on.</p=
>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000000682af06377447b9--

--===============3278170142092207728==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3278170142092207728==--
