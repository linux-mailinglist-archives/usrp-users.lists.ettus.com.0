Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FA1AADDDC6
	for <lists+usrp-users@lfdr.de>; Tue, 17 Jun 2025 23:16:29 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B4E7A38614B
	for <lists+usrp-users@lfdr.de>; Tue, 17 Jun 2025 17:16:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1750194987; bh=6dQymfgWcBmveTeeNsjEfZwZLCIdeDPSfDfKOhvDwMU=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=ezxC9EWYtTe6g7dSkkTJ9YgDnVqIqru1YAWCwE14PuSUPJeU4J8Sitif2rC4TysEu
	 mBslv2WXssT6PNdqmDFrtuGHNumASjwtEfxo+QdJ1ZZzSyM9Za5LE7Ln4a57w0gUda
	 13vQlCX7N8qBZqB+/Aj0NysXbcv3Cel5XEpQ0TNML3v7EAOxNy+XPuIPGJ/vGOtVgL
	 gYRKrDHuwiDHr/iptPN9gm1s3rDqmlNidWpDF1CVRyXvDfoYG1yyuXv9oQZBzUXo0I
	 MiaPqb6h2JrnvClB6L1tDMVI51Z6cBNTnSUAf9N1GUfj6WpGAPeYycu/JV1beVpyyd
	 iEpe/wuuR2QNQ==
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	by mm2.emwd.com (Postfix) with ESMTPS id B4BBB3860BB
	for <usrp-users@lists.ettus.com>; Tue, 17 Jun 2025 17:16:09 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="TKRZH3nV";
	dkim-atps=neutral
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-acbb85ce788so1070849966b.3
        for <usrp-users@lists.ettus.com>; Tue, 17 Jun 2025 14:16:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750194968; x=1750799768; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=fGnM1aE72bMDDew5Mqh+Do6NObG4JCW83WsuGM6bh4E=;
        b=TKRZH3nVUAM4IjbS3pXMzs5mtsmfV63n9uWGMkcjMV+1Qi5vtTarng/KrTksP8475O
         kbecX+YwXhorYqYrewfQxtAH5t3HdqlJuobjnUG+0Vjf82ZL5n5LxZQVN5jRjgDw0voA
         9fBr2TymjJCJ0Q0i/BcHaFKK7e9M+rt+atEf/4+E9G64uEtanFMZYo9O7OXj6HFPDcR4
         kKS7Dk+ZIrxbHTY/Qfm8KrFQDupnCjMUuZX8gPE4sqpybqs0u+BzsiYc7fkygxwCPN96
         hIEHI+sMeHQST3pqQ7YxtqRD4w/esZc7r6fPGD5K2swOsXBI4sZV2ypK6mhZY2VaYmvG
         X73g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750194968; x=1750799768;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fGnM1aE72bMDDew5Mqh+Do6NObG4JCW83WsuGM6bh4E=;
        b=nXy+vc/jdx4ODOhwn2G5fPOWAgrvXY+RDOj6aFdsBFCuLUZSs/oD1LigmePoPnKbCO
         aiv0XpJ+bol9K0XsBmLwM7wWxryVYvCMa1HS9uPGMVTEt2YxlLuFAe14DCZo1crsopWd
         rTZF9xCEvP77HlXtXuR2ugPWy0GEPlnNUMRnskxH22Ey4kmlK1hhHoHz6tisgNw71K0d
         S9dAArHAHAd4os0ismZ0TULRjR527/QBegrOETnyzwncN1QUQGdK98XDZVU7BCU/8s1I
         gXa3G7dmtOFVWw187EIDF/VV/VNEBvqtQbxmMbSzyqzYYgP85LiOi2wnwwrW2+ZnYDgz
         SdRQ==
X-Gm-Message-State: AOJu0Yx9TrUu3DYuh+VmKoeeddqgPjJEkn63dn/Ghf0rVAdxjCuJBxZB
	hxr6n7tTvghqkMfFiwcU+MjlReMtiD/aBQOqan3pkkPDsv9KTO1ZcUl5SBD/1dve8QX1JL5Xx3X
	n6IDUsMbUlzuRxmVHc6PeCHZ6GlhZ+4sJCpij
X-Gm-Gg: ASbGncuhBeHc/X6dSuzqWnHORjZ8cvK67k5BeGMr8fvdsNh/CFnRMt3hHRJbVgb4NBD
	C7zCGqN5ADA0qrvEDnei5Cp0euIODBDKV98Upb7Jt5qtO5lFwwr46U5VmpHLbZI98dOFid7MV6k
	YADJcsy8NKHwZ/ue3zfMYonn7USmYyWkiioV5PSTMd1C7xUVgG
X-Google-Smtp-Source: AGHT+IFZ0uGfPLs1t6u1YGw502PzD8X11OBcULyqb/Nw4pQ2FbHg4vHYuZS6FmrEr/L7AiYkG0H9zPPsSjGvTDSNm+Y=
X-Received: by 2002:a17:907:70b:b0:ad8:a9fc:8146 with SMTP id
 a640c23a62f3a-adfad59065fmr1428711166b.44.1750194968319; Tue, 17 Jun 2025
 14:16:08 -0700 (PDT)
MIME-Version: 1.0
References: <CAEXYVK6rYFpX8dJErUdGkqn3e56eifN3COXmmqmvvStu5A9AHA@mail.gmail.com>
 <CAFOi1A6=_+6Ej3wzk55ezeyK1EEFEWrBaJN7=guEmTD9AD1Pfg@mail.gmail.com>
In-Reply-To: <CAFOi1A6=_+6Ej3wzk55ezeyK1EEFEWrBaJN7=guEmTD9AD1Pfg@mail.gmail.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Tue, 17 Jun 2025 17:15:57 -0400
X-Gm-Features: AX0GCFt5TrZj2KTwcV88q6m2c6SfaRjwE9KhjIvXF663BywZiH1l2ZbQW7cDltE
Message-ID: <CAEXYVK5vMzrReanTsk4OL8M0D5+c=gSdgjAA4GJGEsdh5f7wVw@mail.gmail.com>
To: Martin Braun <martin.braun@ettus.com>
Message-ID-Hash: HYAXKNBK5LPFNBEXT3EEVHHLC7ZOOR5K
X-Message-ID-Hash: HYAXKNBK5LPFNBEXT3EEVHHLC7ZOOR5K
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Remote Streaming from Both X440 QSFP+ Ports
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HYAXKNBK5LPFNBEXT3EEVHHLC7ZOOR5K/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9193865388861094023=="

--===============9193865388861094023==
Content-Type: multipart/alternative; boundary="0000000000005fd9860637cb052a"

--0000000000005fd9860637cb052a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

One more question regarding remote streaming.

I have a block which has a single CHDR output, but 4 "output ports". I have
an endpoint with 4 inputs.

Am I able to stream my block outputs to different remote locations? When I
try it, it just seems to want to stream to the same software endpoint and
whatever the last configuration was written is used.

I think this makes sense as looking through the HDL, it seems like each
chdr_stream_endpoint can only address a single destination endpoint. So if
I want to use multiple remote streams at different remotes, I'd need to
instantiate a single endpoint for each remote stream I want - right?

Can this be confirmed?

Thanks,
Brian

On Wed, May 21, 2025 at 3:23=E2=80=AFAM Martin Braun <martin.braun@ettus.co=
m> wrote:

>
>
> On Fri, May 16, 2025 at 10:18=E2=80=AFPM Brian Padalino <bpadalino@gmail.=
com>
> wrote:
>
>> On the X440, I'd like my block to be able to output to both QSFP+ ports.
>> I will be setting this up using remote streaming and I am wondering the
>> appropriate way to set up my block to be able to output to both ports. F=
rom
>> the little blurb on remote streaming here:
>>
>>   https://files.ettus.com/manual/page_stream.html#stream_remote
>>
>> I see that I can supply:
>>
>>   - dest_addr, dest_port, dest_mac_addr, adapter
>>
>> The example uses the MultiUSRP object but I am using straight RFNoC. I
>> assume I need to do this for every stream that I might create, so for th=
e N
>> ports that are on my block, I need N RX streams that define those values=
,
>> right?
>>
>
> Yes, exactly.
>
>
>> If I had 4 ports, and I wanted to split 2 ports on sfp0 and 2 on sfp1,
>> I'd create the stream for all 4 then issue the stream command to each on=
e
>> and I should see the packets flow?
>>
>
> That's right.
>
> --M
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000005fd9860637cb052a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">One more question regarding remote streaming.<div><br></di=
v><div>I have a block which has a single CHDR output, but 4 &quot;output po=
rts&quot;. I have an endpoint with 4 inputs.</div><div><br></div><div>Am I =
able to stream my block outputs to different remote locations? When I try i=
t, it just seems to want to stream to the same software endpoint and whatev=
er the last configuration was written is used.</div><div><br></div><div>I t=
hink this makes sense as looking through the HDL, it seems like each chdr_s=
tream_endpoint can only address a single destination endpoint. So if I want=
 to use multiple remote streams at different remotes, I&#39;d need to insta=
ntiate a single endpoint for each remote stream I want - right?</div><div><=
br></div><div>Can this be confirmed?</div><div><br></div><div>Thanks,</div>=
<div>Brian</div></div><br><div class=3D"gmail_quote gmail_quote_container">=
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, May 21, 2025 at 3:23=E2=80=AF=
AM Martin Braun &lt;<a href=3D"mailto:martin.braun@ettus.com">martin.braun@=
ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, May 16, 2025 at 10=
:18=E2=80=AFPM Brian Padalino &lt;<a href=3D"mailto:bpadalino@gmail.com" ta=
rget=3D"_blank">bpadalino@gmail.com</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">On the X440, I&#39;d li=
ke my block to be able to output to both QSFP+ ports. I will be setting thi=
s up using remote streaming and I am wondering the appropriate way to set u=
p my block to be able to output to both ports. From the little blurb on rem=
ote streaming here:<div><br></div><div>=C2=A0=C2=A0<a href=3D"https://files=
.ettus.com/manual/page_stream.html#stream_remote" target=3D"_blank">https:/=
/files.ettus.com/manual/page_stream.html#stream_remote</a></div><div><br></=
div><div>I see that I can supply:</div><div><br></div><div>=C2=A0 - dest_ad=
dr, dest_port, dest_mac_addr, adapter</div><div><br></div><div>The example =
uses the MultiUSRP object but I am using straight RFNoC. I assume I need to=
 do this for every stream that I might create, so for the N ports that are =
on my block, I need N RX=C2=A0streams that define those values, right?</div=
></div></blockquote><div><br></div><div>Yes, exactly.</div><div>=C2=A0<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><di=
v>If I had 4 ports, and I wanted to split 2 ports on sfp0 and 2 on sfp1, I&=
#39;d create the stream for all 4 then issue the stream command to each one=
 and I should see the packets flow?</div></div></blockquote><div><br></div>=
That&#39;s right.</div><div class=3D"gmail_quote"><br></div><div class=3D"g=
mail_quote">--M</div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000005fd9860637cb052a--

--===============9193865388861094023==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9193865388861094023==--
