Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8180862AE5E
	for <lists+usrp-users@lfdr.de>; Tue, 15 Nov 2022 23:30:12 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3E82D383FBB
	for <lists+usrp-users@lfdr.de>; Tue, 15 Nov 2022 17:30:11 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1668551411; bh=EfOhAqdNS1ozR+fohV6I0jDH3aN1x7eUbfJOc5F1ack=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=PzAuScbHP5o3koF9y26Ww3DU4w+FdV60db3H+mOz5DTIYqgdq38J9aEkN6wgwTKew
	 Ndx3HQ6o5HgRWnf+juppiIzNnLggDYGiIo7NK77e73fpNQrQR7lZlrD93VzDA+gWWL
	 gX+d8pX1uyRhPcwk6eblnumq5YiaSiRdnzM3JCmbKHkcYZ8z4wYQDHxOR8w/wlWXqx
	 bzJT0ayG5QHuEjcxiV+o8ez5yANPjHsVLfOIbz70w2zzswOhityKVLI8iRjKRtNPFz
	 jGPpH0iN8Kd+bFiOkd5tdhita7qExX4q/FSEafKzz0uiqGzdiLw8exvYePPGv6MGyg
	 TXY/iV7FJLQdQ==
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 0C52E383E19
	for <usrp-users@lists.ettus.com>; Tue, 15 Nov 2022 17:30:04 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="A4FIbFee";
	dkim-atps=neutral
Received: by mail-ej1-f53.google.com with SMTP id y14so39799669ejd.9
        for <usrp-users@lists.ettus.com>; Tue, 15 Nov 2022 14:30:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=iiAyr++Taax1UZwbotQRFVQsOmrAj5q43ouqfXBeEUs=;
        b=A4FIbFeeJqolmHv5GTVjEEXrzY4Xoc6dOVC/T9vC+0nGiFJ0s9UQqx7CNiaTWzbKe+
         sTozheKMuUkgMbQjrywMKvLC+6iO0mej7wLd9LfyodT3BjhAlEmKtbYwRlyY4QLZg4Ux
         CEudbSxoJ2jhbtdj1RrkWBBNcpodSKvC3Ni2R4vxCigizfDISwkFYRPD72YtONTcVhR+
         LMhRQH2uRhiz3TqQYWsccHJEv0zClipMJlszEwuYuLWgMMk3PDz2eiih1KqFGam+zkQl
         9kleBptUGRgtP9nkSgWjMvbUBToWY6oTyJ4Z4X8T6l1YW3WHdcolrOdcSrgvfzNcloF1
         LTGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iiAyr++Taax1UZwbotQRFVQsOmrAj5q43ouqfXBeEUs=;
        b=zy6EU0GavcJ/3cEw3rhP3Z58xG+c5v8vqSzts/dxHVDOC8Da+uS/fTk2Ifx+EyfASC
         81coR59aDk34hUm9rEpbFR76p7RroRgt25F0lbam3FAPzscndYDUI/O0mAw2QvLvOE8G
         XFEmEreARe7BqV29oj1b03ihk3qFuTE812aO/QQnykb9D24Qx5CoHldBY1CtWGSr9Dsh
         wQ9agiHygmgxm7QfFJpP42MhWFW7VjptXu54Kg+0bEAe0ohU5ihGWS+qh8l7pMC92lvA
         iZj425Gq9i4XDen03qQ6OSJaejUGW+rwmb7HRFlb+n4hwpiEW9l5H8HdIiifIytXk/3p
         of/Q==
X-Gm-Message-State: ANoB5pkHFBtpc8UwEA6Pn7yioe5D9xCznYutOmZk3tOSHeL01UyAipTJ
	PbFOsJ9P8ILj40RiIKUDOjgZzaO1B3jA3cBU/G26BUu9u18=
X-Google-Smtp-Source: AA0mqf4PAHRPIMsGYueoWXA0UnTF1SjG0tzlTuciV5cHfhj5b+pT0CA5x8f+epVSbE+4AL2BjBWAveD9e9cmUWAQvsY=
X-Received: by 2002:a17:906:78e:b0:7a1:e52e:bddb with SMTP id
 l14-20020a170906078e00b007a1e52ebddbmr14907960ejc.685.1668551403675; Tue, 15
 Nov 2022 14:30:03 -0800 (PST)
MIME-Version: 1.0
References: <CMQh8Lh7tEzsD2usvLZ3XHx2LvtqXKWR16GiFIlE@lists.ettus.com>
In-Reply-To: <CMQh8Lh7tEzsD2usvLZ3XHx2LvtqXKWR16GiFIlE@lists.ettus.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Tue, 15 Nov 2022 17:29:52 -0500
Message-ID: <CAB__hTQ394WE56ZX7VuUKk5LaQKxrDPZ5HM4mbbRST167N1L3A@mail.gmail.com>
To: ri28856@mit.edu
Message-ID-Hash: 7AKUQM5FITT4KUK6M3KCUSI7TLJHM34Y
X-Message-ID-Hash: 7AKUQM5FITT4KUK6M3KCUSI7TLJHM34Y
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Accessing DDC block control in mutli_usrp application
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7AKUQM5FITT4KUK6M3KCUSI7TLJHM34Y/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7799145778625045332=="

--===============7799145778625045332==
Content-Type: multipart/alternative; boundary="000000000000b55c9205ed89e563"

--000000000000b55c9205ed89e563
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Although you are right when you say that the rfnoc and multi_usrp apis are
nearly orthogonal and do not mesh, it is also true that the multi_usrp
object is actually implemented under-the-hood with with rfnoc api. Thus, it
is a given that if you can do something in the multi_usrp api, you can also
do it in the rfnoc api.  Timed commands are possible with both the DDC and
the Radio blocks.  If you want to see how multi_usrp does stuff with the
rfnoc api, look in the file host/lib/usrp/multi_usrp_rfnoc.cpp.  If you
still have trouble let me know. I have implemented timed frequency sets in
my own code using the rfnoc api and can delve a little deeper if needed.

Rob

On Tue, Nov 15, 2022 at 1:09 PM <ri28856@mit.edu> wrote:

> Having the exact exception details would be very helpful to share--just
> like in any other discipline involving computers.  This can help the
> community help you.
>
> I forgot to copy down the exception info last time I encountered it.
> Unfortunately (or fortunately depending on your perspective) it=E2=80=99s
> intermittent, and sometimes only occurs after a couple hours of running.
> Next time I encounter it I=E2=80=99ll certainly save more information.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000b55c9205ed89e563
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Although you are right when you say that the rfnoc and mul=
ti_usrp apis are nearly orthogonal and do not mesh, it is also true that th=
e multi_usrp object is actually implemented under-the-hood with with rfnoc =
api. Thus, it is a given that if you can do something in the multi_usrp api=
, you can also do it in the rfnoc api.=C2=A0 Timed commands are possible wi=
th both the DDC and the Radio blocks.=C2=A0 If you want to see how multi_us=
rp does stuff with the rfnoc api, look in the file host/lib/usrp/multi_usrp=
_rfnoc.cpp.=C2=A0 If you still have trouble let me know. I have implemented=
 timed frequency sets in my own code using the rfnoc api and can delve a li=
ttle deeper if needed.<div><br>Rob</div></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Nov 15, 2022 at 1:09 PM &lt=
;<a href=3D"mailto:ri28856@mit.edu">ri28856@mit.edu</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex"><blockquote><p>Having th=
e exact exception details would be very helpful to share--just <br>like in =
any other discipline involving computers.=C2=A0 This can help the community=
 help you.</p></blockquote><p>I forgot to copy down the exception info last=
 time I encountered it. Unfortunately (or fortunately depending on your per=
spective) it=E2=80=99s intermittent, and sometimes only occurs after a coup=
le hours of running. Next time I encounter it I=E2=80=99ll certainly save m=
ore information. </p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000b55c9205ed89e563--

--===============7799145778625045332==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7799145778625045332==--
