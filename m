Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DDE834C3F09
	for <lists+usrp-users@lfdr.de>; Fri, 25 Feb 2022 08:31:09 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 751C638509C
	for <lists+usrp-users@lfdr.de>; Fri, 25 Feb 2022 02:31:08 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ZGT5cp4J";
	dkim-atps=neutral
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com [209.85.219.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 207BC384FF9
	for <usrp-users@lists.ettus.com>; Fri, 25 Feb 2022 02:30:17 -0500 (EST)
Received: by mail-yb1-f176.google.com with SMTP id j2so4288784ybu.0
        for <usrp-users@lists.ettus.com>; Thu, 24 Feb 2022 23:30:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=EcKeUL5DbYxfa0b45DJ9h3h/9wjq/NaNWKcMHrMtoq4=;
        b=ZGT5cp4JQcDkKX5yTmhqdO/znKuaeTWGx+OKK4oT4ivZogwabN4sM6esxREK9DUz5w
         X4D0DMDvjYHb31N0zlDubF5kK4ic8rR0Gyc9Vf6iaF8kAuh77LKlZYQ5EDmjTfeJ21IB
         8XMQn4PtPYbdVqUR9tVALSA9Hit0IzyrgKfljiFcpCew+ejUDo7k7aVN9KpraNtly8Ut
         FAvPE7GnDLdghMkYiq6hsdxi7lYUtKrvY3CSahj3Vt1T5ctt8Yn09PFpMrOjSLswxv+Q
         G1JReZdtf9W/iGrfkqGVf3890fq0WmyMq4Xa2C4OclDJorzDaXWnG1i+kyRTiDJ1FRn3
         Wn7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=EcKeUL5DbYxfa0b45DJ9h3h/9wjq/NaNWKcMHrMtoq4=;
        b=xxLakdGnGp2kfI8LbmqPKn4/yp3MLUOZ5ZIZPcuIRN1FJHoB+IR/lfRwAuYT1vK5CG
         spYAJxddqrLh95T+mcQ3PKo9Ep+ck0idKyIhhqGVLTEffYkSZ5Di9luZ9JUt0BU3T+2H
         PT3Mg0jqwx4K2X0n3PG4UZWbXuCsJM29frs1E4lnAK2L1oUL8jbC2Dl/YvT/lBLSdH6/
         w01lwtQk8TqxqeeOwBBjC39lxSPqTuzY9ywV352wW8IZ7w7WGDmVI4OTBX6Fpj64dBhJ
         M6TvvCd23xtCpnqHaa+MLl91gK3E1itlYOxBePW/LDb2s8gQ/z1sNOtMZOIzh421Og8A
         IwfQ==
X-Gm-Message-State: AOAM531/YFf2UI4fQzb/3RNPPVc7degtGJQ6BX67vNCjbxkWOjngfw+E
	ZQFhXqioGWeG1ij5yTAm5E09i5uuuEbpwijZZW4=
X-Google-Smtp-Source: ABdhPJxENOsNlfjtG2F6TgROBqnHriy4mY4ErDWK5T6nc409OBTLfa1mM2mx5sOP0c8chr/RMyvsqaEetGZKa2kq6/Q=
X-Received: by 2002:a25:c6:0:b0:61d:ed35:bf3e with SMTP id 189-20020a2500c6000000b0061ded35bf3emr6109972yba.464.1645774215926;
 Thu, 24 Feb 2022 23:30:15 -0800 (PST)
MIME-Version: 1.0
References: <CAA=S3PsLQHmSSRXKqZfuHZ+FgUyMV4Jtv5qVC+s75jLttmSAAQ@mail.gmail.com>
 <CAB__hTSJe7puQo0EoqbWZ2YBOy7wGXfwYUTqAbQaHJnnmSn5-Q@mail.gmail.com> <CAA=S3Pup0OazTdNr_SG=TBo4cKMCA8QFTnatU02wyQJkLHVUGA@mail.gmail.com>
In-Reply-To: <CAA=S3Pup0OazTdNr_SG=TBo4cKMCA8QFTnatU02wyQJkLHVUGA@mail.gmail.com>
From: sp h <stackprogramer@gmail.com>
Date: Wed, 23 Feb 2022 10:59:28 +0330
Message-ID: <CAA=S3Ps_XBpgjPJ7r3FqKK6iD_h+gCJgAs0Ny6=W9s6fmmiYtg@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>, usrp-users@lists.ettus.com
Message-ID-Hash: GBILLPIYKU5CGNP7ID34A6LOT3CWBUO6
X-Message-ID-Hash: GBILLPIYKU5CGNP7ID34A6LOT3CWBUO6
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How can create an RFNOC correlate block for USRP?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GBILLPIYKU5CGNP7ID34A6LOT3CWBUO6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9186270350244793111=="

--===============9186270350244793111==
Content-Type: multipart/alternative; boundary="00000000000085583805d8d2ab4b"

--00000000000085583805d8d2ab4b
Content-Type: text/plain; charset="UTF-8"

Thanks, I know that I can use FFT but I want to implement Xcorrelate like
xcorr Matlab directly...as an independent RFNOC blocks


On Wed, Feb 23, 2022 at 10:56 AM sp h <stackprogramer@gmail.com> wrote:

> Thanks, I know that I can use FFT but I want to implement Xcorrelate like
> xcorr matlab directly...as a  independent RFNOC blocks
>
>
> On Mon, Feb 21, 2022 at 7:40 PM Rob Kossler <rkossler@nd.edu> wrote:
>
>> is there a specific function (such as MATLAB 'xcorr') you want to
>> implement?  You can implement 'cconv' with a pair of FFT/IFFT and complex
>> multiplication.  If you zero-pad and use 2x length FFTs, you can
>> alternatively obtain linear convolution using an overlap-and-add
>> configuration.  I haven't looked at 'xcorr' specifically, but my guess is
>> that you could do what you want with an FFT/IFFT pair.
>> Rob
>>
>> On Mon, Feb 21, 2022 at 6:36 AM sp h <stackprogramer@gmail.com> wrote:
>>
>>> How can create an RFNOC correlate block for USRP?
>>> This thread is created to share results on searching how we can
>>> correlate RFNOC blocks...
>>> Anyone that had an idea, I'm glad to hear it...
>>> thanks in advance
>>>
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>

--00000000000085583805d8d2ab4b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Thanks, I know that I can use FFT but I w=
ant to implement=C2=A0Xcorrelate like xcorr Matlab directly...as an indepen=
dent RFNOC blocks<div class=3D"gmail-yj6qo gmail-ajU" style=3D"outline:none=
;padding:10px 0px;width:22px;margin:2px 0px 0px"><br class=3D"gmail-Apple-i=
nterchange-newline"></div></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">On Wed, Feb 23, 2022 at 10:56 AM sp h &lt;<a href=
=3D"mailto:stackprogramer@gmail.com">stackprogramer@gmail.com</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"lt=
r">Thanks, I know that I can use FFT but I want to implement=C2=A0Xcorrelat=
e like xcorr matlab directly...as a=C2=A0 independent RFNOC blocks<div><br>=
</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Mon, Feb 21, 2022 at 7:40 PM Rob Kossler &lt;<a href=3D"mailto:rko=
ssler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">is there a =
specific function (such as MATLAB &#39;xcorr&#39;) you want to implement?=
=C2=A0 You can implement &#39;cconv&#39; with a pair of FFT/IFFT and comple=
x multiplication.=C2=A0 If you zero-pad and use 2x length FFTs, you can alt=
ernatively obtain linear convolution using an overlap-and-add configuration=
.=C2=A0 I haven&#39;t looked at &#39;xcorr&#39; specifically, but my guess =
is that you could do what you want with an FFT/IFFT pair.<div>Rob</div></di=
v><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On M=
on, Feb 21, 2022 at 6:36 AM sp h &lt;<a href=3D"mailto:stackprogramer@gmail=
.com" target=3D"_blank">stackprogramer@gmail.com</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">How can cr=
eate an RFNOC correlate block for USRP?<div>This thread is created to share=
 results on searching how we can correlate RFNOC blocks...</div><div>Anyone=
 that had an idea, I&#39;m glad=C2=A0to hear it...</div><div>thanks in adva=
nce</div><div><br></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div></div>

--00000000000085583805d8d2ab4b--

--===============9186270350244793111==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9186270350244793111==--
