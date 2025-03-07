Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F56EA55F9A
	for <lists+usrp-users@lfdr.de>; Fri,  7 Mar 2025 05:46:15 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7D8D8385D0A
	for <lists+usrp-users@lfdr.de>; Thu,  6 Mar 2025 23:46:14 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1741322774; bh=ZHOj3n6FmzBPU1ij/7zETUMa99dG9AgQZq7ljTsYYQg=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=BfXZ2RNQf7NVtyMtKdOXnaYheXZEoBawk5uUqfzAtUWBxpoFY4SSAY0uFbIRUfcH5
	 oPiPHp/c0I6+LVJuMLDLCrxs55Ti8xVcfmW8DSYDtgyqFoHok8xN8xS8eXgUFMOlLv
	 4o9ZbNZR5f7mwdxCJHEnMQEc/17rKHbeENlwQyzL/+0XPA1TXWyeJtlsXyBneQ3yc/
	 6ey+bHarqwyrTDWA33jthAlXcMt6Xxm4nPFsRXPWDSkOkgf6QZOZicCm9PZ4LUVjmv
	 GkGyYN9ymVfjK1tPDJbAKydDobQoVR/0xbJXuP8KOgjBM08mptn8wHhZ/hDjyXe9vu
	 W6Hen4g/xhG+Q==
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com [209.85.167.176])
	by mm2.emwd.com (Postfix) with ESMTPS id E41C738513E
	for <usrp-users@lists.ettus.com>; Thu,  6 Mar 2025 23:45:43 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="CUWN1/xu";
	dkim-atps=neutral
Received: by mail-oi1-f176.google.com with SMTP id 5614622812f47-3f6818bec2dso817556b6e.3
        for <usrp-users@lists.ettus.com>; Thu, 06 Mar 2025 20:45:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741322743; x=1741927543; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=QUqNySrD8BfUeynJusfkbBmwE/adBYdP6e/OA6wZrO4=;
        b=CUWN1/xuiG0fD2hZFYbKTWpefRGKGlhYkm87TG5euBgAup/XWw9HU09YT/ewNI3zfl
         16jShyOtwyZ/XeKMUpOrlwombfhApPK5auK+7RamKmBCOgk4Z5eaAhP3oFk6eUnr34PA
         jlum/eNa97LzMrvfhJx3EQop77o682GRWPTQPbGCYx17hesARdAta1kyTQ8MASWWXfms
         4WKb1mdniNB6XDXLiAoZd1wZwQA0hloLUjp8vo1B99hjP8NkO3mY7ae9ZAJvEVGmWW3f
         0MyUf00Bu+IJwGBpsgDtvwapxPK4s67ZijbXgyoNBLafVHr8ptBaAtuzAyBb40ODos08
         yrnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741322743; x=1741927543;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QUqNySrD8BfUeynJusfkbBmwE/adBYdP6e/OA6wZrO4=;
        b=jmMYco6yPPACO8ZZYudCV29inZFsz0FCQFleFsNa5KFm8F/6Z3jePVZ/JXn6Qwv0WO
         rvleLwK2IYiKNFWtunP4d3y8UMqk5vYXGHKepGWr6/iJml/1tOINXKmeSz7kL985A8Sb
         Cieey9kVmtQTf3In0PZACp0fVP2elvCOebtsk8/UGJOxxhLa5Ze7O0oDAAs7z2yVKSn/
         5JhL8f1jGdI6GxNMeHCbhuTIBVG2k+n4SiympIIXk+uEDd2ae8rj5a7LWnWXCY+F51oK
         l2CgezjlF8ls8LL7yMMy9uXSXFb7X4kSV90zoHJgOzORzDq3oseqqB42Rcu2+/412mH+
         TV1g==
X-Gm-Message-State: AOJu0YwSB4nGJz0V2ntWOB3H8VQa7JLDnLqVovRX5ORX6x5q6A2etE1Z
	WareYUI5Jlo1bs2PtMbL4q4pObOvT3iw0nkqlll0+mCnv89fRtqBbIod7Tl6eWLOdy7FoxCeZHc
	NwFmOT7UvbLnFDs1CiiBLUXsOYaw=
X-Gm-Gg: ASbGncuEUZ2ORNZPdgWDbV2Ml03Tx7N7uQf0mC5DnlIrATV2uDrIqFZJNTVHcmu5Ghg
	YNTStdMJw4hXWZG12tT4wFdBcahP3UP4+41heicLRuOOETJPdCnGD+s/YgVx+choq/D8EwEux9c
	pEML2GmiCQwQneEcsd4wnRZEqttahpHXJ+/PUfBB7+xhdIKEck6kDVmTo/hJ8=
X-Google-Smtp-Source: AGHT+IFOIf314t/KQvRUm1faMcEZyc7LXDzhrWNPiStygV+Q11cgMquIuvudvKuJTVqfvgri5dxLc51JYKCQPf0ylc0=
X-Received: by 2002:a05:6808:2e97:b0:3f4:95b:b12b with SMTP id
 5614622812f47-3f697c15cfemr1149205b6e.33.1741322742795; Thu, 06 Mar 2025
 20:45:42 -0800 (PST)
MIME-Version: 1.0
References: <CAE=q3UP7mSpKn7+BSwKL_8HeVjXcsQe6QH+N_QqZQPzpsz66fQ@mail.gmail.com>
 <CAFche=gXQJ0sD84TB5pk4PMRxrNCrGPJZ28-cgjMjxH4ox2CjA@mail.gmail.com>
In-Reply-To: <CAFche=gXQJ0sD84TB5pk4PMRxrNCrGPJZ28-cgjMjxH4ox2CjA@mail.gmail.com>
From: David <vitishlsfan21@gmail.com>
Date: Thu, 6 Mar 2025 20:45:10 -0800
X-Gm-Features: AQ5f1JrmNZyC4zvrO737WL3UQJ1Q2qX8pft9cBqnBwg8uVMzt2I_mfPv2gd4CfQ
Message-ID: <CAE=q3UM9UMT1s1PuR0hEOs0t24+qU7sEtU+6OkTdfZxYpK9KQg@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
Message-ID-Hash: PNTVIL4G5KVIATXPYOCE2E6ASWPIMM7A
X-Message-ID-Hash: PNTVIL4G5KVIATXPYOCE2E6ASWPIMM7A
X-MailFrom: vitishlsfan21@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: rfnoc_image_builder error: trying to tool lock on already tool locked arc
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PNTVIL4G5KVIATXPYOCE2E6ASWPIMM7A/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4782342047886930642=="

--===============4782342047886930642==
Content-Type: multipart/related; boundary="00000000000086a649062fb94b2f"

--00000000000086a649062fb94b2f
Content-Type: multipart/alternative; boundary="00000000000086a648062fb94b2e"

--00000000000086a648062fb94b2e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Wade,

Thank you for this, I took a look at repeat_fpga_build.py and I think that
will be very helpful. I am going to add some modifications that log the
types of failures I get and the amount.

I have the issue with two different builds, both with two custom RFNoC
blocks and HLS modules for my logic. I am building an x310 image, and both
of these builds have completed before with the same HLS verilog files used.

One thing that is worth mentioning is I get a timing violation in a pulse
stretcher module from UHD. However, when I have gotten that error the build
generates the bit file and it still works for my use case on the FPGA. That
has been around for some time and I don't think it is the cause of this
recent issue.

I will try and get the stats from the repeat_fpga_build.py and reply in the
coming days.

Thanks,

David

On Thu, Mar 6, 2025 at 9:01=E2=80=AFAM Wade Fife <wade.fife@ettus.com> wrot=
e:

> Hi David,
>
> I'm surprised that you're seeing it that frequently. The Ettus continuous
> integration tests build FPGAs regularly and from what I understand this
> issue is pretty rare there. This makes me wonder if there's something abo=
ut
> the images you're building that causes this to reproduce more frequently
> for you. Can you estimate what percentage of unique builds (with a unique
> build seed or git hash) fail? Which FPGA image are you building? Does it
> have custom logic in it?
>
> You could use the repeat_fpga_build.py script to automate building the
> FPGA multiple times to get a successful build. It automates the process o=
f
> selecting a unique seed for each build and can even run multiple build jo=
bs
> at a time.
>
> Thanks,
>
> Wade
>
> On Mon, Mar 3, 2025 at 1:30=E2=80=AFPM David <vitishlsfan21@gmail.com> wr=
ote:
>
>> Using UHD 4.6/Ubuntu 22.04/x310, I have built many images in the last
>> year or so with rfnoc_image_builder. Recently in the last month, I get t=
he
>> following error on almost all images:
>>
>> [image: image.png]
>>
>> I have tried the following, after referencing this the known issues
>> section in the USRP3 build instructions (
>> https://files.ettus.com/manual/md_usrp3_build_instructions.html):
>>
>>    1.  doing the suggested and making a non-functional source code
>>    change and recommitting the git
>>    2. deleting the .git directory in both the block directory and the
>>    uhd/ directory where the fpga build happens
>>    3. changing the build seed in uhd/fpga/usrp3/top/x300/Makefile
>>    4. Running on a different machine, copying the block source code and
>>    using a different UHD git all together (private rehost vs the github =
UHD).
>>    The vivado 2021.1 install is the same as its on a network file system
>>
>> These do not produce repeatable good results. Maybe once a week or once
>> every two weeks one of these things will finish the build. This has been
>> happening for about a month or two, and I don't know how else to
>> troubleshoot.
>>
>> Any advice?
>>
>> Thanks,
>>
>> David
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--00000000000086a648062fb94b2e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Wade,<div><br></div><div>Thank you for this, I took a look=
 at repeat_fpga_build.py and I think that will be very helpful. I am going =
to add some modifications that log the types of failures I get and the amou=
nt.</div><div><br></div><div>I have the issue with=C2=A0two different build=
s, both with two custom RFNoC blocks and HLS modules for my logic. I am bui=
lding an x310 image, and both of these builds have completed before with th=
e same HLS verilog files used.</div><div><br></div><div>One thing that is w=
orth mentioning is I get a timing violation in a pulse stretcher module fro=
m UHD. However, when I have gotten that error the build generates the bit f=
ile and it still works for my use case on the FPGA. That has been around fo=
r some time and I don&#39;t think it is the cause of this recent=C2=A0issue=
.</div><div><br></div><div>I will try and get the stats from the repeat_fpg=
a_build.py and reply in the coming days.</div><div><br></div><div>Thanks,</=
div><div><br></div><div>David</div></div><br><div class=3D"gmail_quote gmai=
l_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Mar 6, 202=
5 at 9:01=E2=80=AFAM Wade Fife &lt;<a href=3D"mailto:wade.fife@ettus.com">w=
ade.fife@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex"><div dir=3D"ltr"><div>Hi David,</div><div><br></div><div>=
I&#39;m surprised that you&#39;re seeing it that frequently.=20
The Ettus continuous integration tests build FPGAs regularly and from what =
I understand this issue is pretty rare there. This makes me wonder if there=
&#39;s something about the images you&#39;re building that causes this to r=
eproduce more frequently for you. Can you estimate what percentage of uniqu=
e builds (with a unique build seed or git hash) fail? Which FPGA image are =
you building? Does it have custom logic in it?</div><div><br></div><div>You=
 could use the repeat_fpga_build.py script to automate building the FPGA mu=
ltiple times to get a successful build. It automates the process of selecti=
ng a unique seed for each build and can even run multiple build jobs at a t=
ime.</div><div><br></div><div>Thanks,</div><div><br></div><div>Wade</div></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Mon, Mar 3, 2025 at 1:30=E2=80=AFPM David &lt;<a href=3D"mailto:vitishlsfa=
n21@gmail.com" target=3D"_blank">vitishlsfan21@gmail.com</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><d=
iv>Using UHD 4.6/Ubuntu 22.04/x310, I have built many images in the last ye=
ar or so with rfnoc_image_builder. Recently in the last month, I get the fo=
llowing error on almost all images:</div><div><br></div><div><img src=3D"ci=
d:ii_m7tarshu0" alt=3D"image.png" width=3D"600" height=3D"161" style=3D"mar=
gin-right: 25px;"><br></div><div><br></div><div>I have tried the following,=
 after referencing this the known issues section in the USRP3 build instruc=
tions (<a href=3D"https://files.ettus.com/manual/md_usrp3_build_instruction=
s.html" target=3D"_blank">https://files.ettus.com/manual/md_usrp3_build_ins=
tructions.html</a>): <br></div><div><ol><li>=C2=A0doing the suggested and m=
aking a non-functional source code change and recommitting the git <br></li=
><li>deleting the .git directory in both the block directory and the uhd/ d=
irectory where the fpga build happens</li><li>changing the build seed in uh=
d/fpga/usrp3/top/x300/Makefile</li><li>Running on a different machine, copy=
ing the block source code and using a different UHD git all together (priva=
te rehost vs the github UHD). The vivado 2021.1 install is the same as its =
on a network file system</li></ol><div>These do not produce repeatable good=
 results. Maybe once a week or once every two weeks one of these things wil=
l finish the build. This has been happening for about a month or two, and I=
 don&#39;t know how else to troubleshoot. <br></div><div><br></div><div>Any=
 advice? <br></div><div><br></div><div>Thanks,</div><div><br></div><div>Dav=
id</div></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--00000000000086a648062fb94b2e--

--00000000000086a649062fb94b2f
Content-Type: image/png; name="image.png"
Content-Disposition: inline; filename="image.png"
Content-Transfer-Encoding: base64
Content-ID: <ii_m7tarshu0>
X-Attachment-Id: ii_m7tarshu0

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
YII=
--00000000000086a649062fb94b2f--

--===============4782342047886930642==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4782342047886930642==--
