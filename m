Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BD1D0357574
	for <lists+usrp-users@lfdr.de>; Wed,  7 Apr 2021 22:07:38 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CD3BE383C55
	for <lists+usrp-users@lfdr.de>; Wed,  7 Apr 2021 16:07:37 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="paKEWjeq";
	dkim-atps=neutral
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com [209.85.217.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 6B4B2383A7B
	for <USRP-users@lists.ettus.com>; Wed,  7 Apr 2021 16:06:52 -0400 (EDT)
Received: by mail-vs1-f52.google.com with SMTP id k124so4704022vsk.3
        for <USRP-users@lists.ettus.com>; Wed, 07 Apr 2021 13:06:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=1JD5vg9I3b1cClpw4Ep8a5f4vFmE1/zqZwsyNPMk25M=;
        b=paKEWjeq6XzLkgZIgkNfOrjfeUszv6WJM1WsaydYlu6YW9f5+NXUCp3h14i/77n0i+
         jIwaARXNknDBSN1MXSxRP0xEF5AFQf/ofQZWQsAaZoSGBxFE7cb+S61l4Fy2zEngHevw
         qLye0JODwn4OvdSbh6gCZZs2lXRoAR5XejztHQ5utwWGlb+PQd6pb+KaJ0i0EVRfp2WL
         FeTmOz/9XsHhWQwQ9rDZQMOuTU8WfObq+O70P1vVZ3zISLyCxJLZDm2738UPlCK+AfaA
         aW7Wao5tig+7xTdgv0kFCrW771jFIs5EGJAS2aGewBQFzgpjvHIU+/3JyRqBQnRjGsPi
         oCVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=1JD5vg9I3b1cClpw4Ep8a5f4vFmE1/zqZwsyNPMk25M=;
        b=IORyA4MKG0kW1ApoAldZ24szNnetlGHCQh60G3wwHmy3LURNHywPOz0b1Ozc+Uk+zA
         aBL/KgMgEjh47pAMCM8ACEN7HOmG++fsAMyNMKNhK988R6r1r3kq6A5hBJCzkFwwQkZV
         1r1zyNMbwk+WOU4CwXom4pCl+o2hgRSnUhuFPXCDbDsiwIIlaTU2+T0TidpgouZ+XA9v
         S5NVNtFFInrZXfOt6c2EE6HpkHYIggNbMdafdYhKLo+pwjHB3rUKHB/LYdsZl6aTgIt6
         X8uYlV1AUvgrwXDGfWaO3fUPU66RPcuHw6y6DHfoG6YsEcmIS9TXsJn/zjx+Y/ww7461
         8udA==
X-Gm-Message-State: AOAM530RYCqrEFiHh9Tb1KFQKWyg5YNrBXCcrkmsAFKH27ftHKbnz0Q2
	m+mA4RJsyRNabnq8VsxHuDQ1ly/e5IbBSwhpVW2jP3OACIU7HA==
X-Google-Smtp-Source: ABdhPJzNUASeDZ8FCXKahsjFt7wcTpImujpQxeo1ulVsxfC4lfemAH2WxRKc7FeG+8k6W38v9nSbCf1xTyZawiq5ok0=
X-Received: by 2002:a67:cf41:: with SMTP id f1mr3479608vsm.42.1617826011660;
 Wed, 07 Apr 2021 13:06:51 -0700 (PDT)
MIME-Version: 1.0
References: <CO6PR19MB4801DA37884FB719D398AFFEC6759@CO6PR19MB4801.namprd19.prod.outlook.com>
In-Reply-To: <CO6PR19MB4801DA37884FB719D398AFFEC6759@CO6PR19MB4801.namprd19.prod.outlook.com>
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Date: Wed, 7 Apr 2021 16:06:15 -0400
Message-ID: <CAL7q81taawRcwF=qqKapCj-thoev2uEzKgEO0k4rn13C0dwH6A@mail.gmail.com>
To: Jerrid Plymale <jerrid.plymale@canyon-us.com>
Content-Type: multipart/mixed; boundary="000000000000bc03c805bf677809"
Message-ID-Hash: GI47A2WIP27PG5NZM6PO5DZ37EUAK5PA
X-Message-ID-Hash: GI47A2WIP27PG5NZM6PO5DZ37EUAK5PA
X-MailFrom: jonathon.pendlum@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <USRP-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Bug existing in DUC RFNoC block when GRC generates python script
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GI47A2WIP27PG5NZM6PO5DZ37EUAK5PA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>

--000000000000bc03c805bf677809
Content-Type: multipart/alternative; boundary="000000000000bc03c605bf677807"

--000000000000bc03c605bf677807
Content-Type: text/plain; charset="UTF-8"

Hi Jerrid,

We need to push the fix to gr-ettus, but for now you can use the attached
patch.

Jonathon

On Wed, Apr 7, 2021 at 3:25 PM Jerrid Plymale <jerrid.plymale@canyon-us.com>
wrote:

> Hello All,
>
>
>
> It seems I have come across an problem with the DUC RFNoC block from
> gr-ettus that was brought up back in November. When I try tunning my
> flowgraph, I get the following error: *in__init__ self.ettus_rfnoc_duc_0(
> TypeError: make() takes 4 positional arguments but 5 were given*
>
>
>
> What do I need to do to fix this?
>
>
>
> Best Regards,
>
>
>
> Jerrid
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000bc03c605bf677807
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Jerrid,<div><br></div><div>We need to push the fix to g=
r-ettus, but for now you can use the attached patch.</div><div><br></div><d=
iv>Jonathon</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Wed, Apr 7, 2021 at 3:25 PM Jerrid Plymale &lt;<a href=
=3D"mailto:jerrid.plymale@canyon-us.com">jerrid.plymale@canyon-us.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">





<div lang=3D"EN-US" style=3D"overflow-wrap: break-word;">
<div class=3D"gmail-m_6346144233070502412WordSection1">
<p class=3D"MsoNormal">Hello All,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">It seems I have come across an problem with the DUC =
RFNoC block from gr-ettus that was brought up back in November. When I try =
tunning my flowgraph, I get the following error:
<i><span style=3D"font-size:10pt;font-family:Verdana,sans-serif;color:black=
;background:white">in__init__ self.ettus_rfnoc_duc_0( TypeError: make() tak=
es 4 positional arguments but 5 were given<u></u><u></u></span></i></p>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10pt;font-family:Verdana=
,sans-serif;color:black;background:white"><u></u>=C2=A0<u></u></span></i></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Verdana,sa=
ns-serif;color:black;background:white">What do I need to do to fix this?<u>=
</u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Verdana,sa=
ns-serif;color:black;background:white"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Verdana,sa=
ns-serif;color:black;background:white">Best Regards,</span><u></u><u></u></=
p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Jerrid<u></u><u></u></p>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000bc03c605bf677807--

--000000000000bc03c805bf677809
Content-Type: text/x-patch; charset="US-ASCII"; name="0001-grc-Fix-DUC-parameters.patch"
Content-Disposition: attachment;
	filename="0001-grc-Fix-DUC-parameters.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_kn7vt1ec0>
X-Attachment-Id: f_kn7vt1ec0

RnJvbSAxNzQ2NGM1OTBlMWNkODE5YTJmNjkxODNmODhhYjllNTZkYzhhYWYyIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBKb25hdGhvbiBQZW5kbHVtIDxqb25hdGhvbi5wZW5kbHVtQGV0
dHVzLmNvbT4KRGF0ZTogU3VuLCAxOCBPY3QgMjAyMCAyMTo1Njo1MCAtMDQwMApTdWJqZWN0OiBb
UEFUQ0hdIGdyYzogRml4IERVQyBwYXJhbWV0ZXJzCgotLS0KIGdyYy9ldHR1c19yZm5vY19kdWMu
YmxvY2sueW1sIHwgMSAtCiAxIGZpbGUgY2hhbmdlZCwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdp
dCBhL2dyYy9ldHR1c19yZm5vY19kdWMuYmxvY2sueW1sIGIvZ3JjL2V0dHVzX3Jmbm9jX2R1Yy5i
bG9jay55bWwKaW5kZXggNTM4MzkwMi4uYmY5NmE1YiAxMDA2NDQKLS0tIGEvZ3JjL2V0dHVzX3Jm
bm9jX2R1Yy5ibG9jay55bWwKKysrIGIvZ3JjL2V0dHVzX3Jmbm9jX2R1Yy5ibG9jay55bWwKQEAg
LTgsNyArOCw2IEBAIHRlbXBsYXRlczoKICAgbWFrZTogfC0KICAgICBldHR1cy5yZm5vY19kdWMo
CiAgICAgICAgIHNlbGYucmZub2NfZ3JhcGgsCi0gICAgICAgICR7bnVtX2NoYW5zfSwKICAgICAg
ICAgdWhkLmRldmljZV9hZGRyKCR7YmxvY2tfYXJnc30pLAogICAgICAgICAke2RldmljZV9zZWxl
Y3R9LAogICAgICAgICAke2luc3RhbmNlX2luZGV4fSkKLS0gCjIuMjUuMQoK
--000000000000bc03c805bf677809
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--000000000000bc03c805bf677809--
