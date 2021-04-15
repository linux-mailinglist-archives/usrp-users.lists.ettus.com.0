Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AC07D36155C
	for <lists+usrp-users@lfdr.de>; Fri, 16 Apr 2021 00:21:38 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A8AB238444E
	for <lists+usrp-users@lfdr.de>; Thu, 15 Apr 2021 18:21:37 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="LAp6VPKz";
	dkim-atps=neutral
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com [209.85.217.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 4FD32383FB5
	for <USRP-users@lists.ettus.com>; Thu, 15 Apr 2021 18:20:54 -0400 (EDT)
Received: by mail-vs1-f53.google.com with SMTP id u22so2003388vsu.6
        for <USRP-users@lists.ettus.com>; Thu, 15 Apr 2021 15:20:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=RfU8d5o2Ur6pxvhg/UJ6xb6GpfS9TiixlSikFQPsoio=;
        b=LAp6VPKzhhE9vNdks7kqkJPCb8Fkc4L8pijD+fKHhEIJbXBTNG9JZyu55HIixhqASF
         3SXubeHx2WF3+baUnqjJFS+y7jJI99hSD+9zpoT8QM3+g0dgHDoRdKWBd6sP+eioWbpS
         KfeT0h3b7Urb45dnPHH9kcihu7uUGIagDAcl9m+eYSbGLbOPMRxJcQYfVbecxqIo7ge4
         uSBqgYniIPTpCmLIUAmfhU07MSN3hKlHpAdXf849vHgJl6xMXK7FBm2X15TAEQjIXDPH
         MXu07SZl3bottz/YTM1z04E8o8JUt6Wz9x1gHQSImeC67jCICL7PfU0+405B7FkdNBB2
         h/Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=RfU8d5o2Ur6pxvhg/UJ6xb6GpfS9TiixlSikFQPsoio=;
        b=TtfH1itLeu4fzEUiPhIEMh8lg6/7xGMXf/z0z4licf2L+1jqEasC7ElXfD9QDq/88H
         tpcLIVH5hhQuvixx16Jcg/ukcHoU2pQcRwLDbLi4XlpJ39oZDzF3E1eRXxWUwCxX29nd
         /p3p4lYIjkNgw3Uk6ru+/UYaWA3KUDlb1EII6RKibx0fuIfJW7j0ibqmAWMRz5QoivvW
         mS12bdwWmgcwITH43c0Qjjt0lh+apHq6NOzlvlK0t1FunBTP1RzQohDj/xlle6ScKLvp
         dhcrKvtP/hOcHxLwccF+7Ouu4A/Ho2Dcp7YuAx608pCQhDVgjXGLrUx1/mL5iUWk6dlj
         m86Q==
X-Gm-Message-State: AOAM532TiTvPHGzZJbtzXUOKwTnzjK3DsBOrgQtsObJDIv7ddLjVDdkI
	ciW7qY+pLZJpRvBY8kQYMpJsQbLtyFw2BLoKjoRiBhyK
X-Google-Smtp-Source: ABdhPJx/Zeij8H7oRRSLOzxvq6Q13BOcpLKEnupq6StbZ+LGD6o/1dKb3Xi9fFzzOwvzyfmw41QKxswVF0/mvDCIVro=
X-Received: by 2002:a67:ce18:: with SMTP id s24mr4260413vsl.7.1618525253712;
 Thu, 15 Apr 2021 15:20:53 -0700 (PDT)
MIME-Version: 1.0
References: <CO6PR19MB48012AD1BB3AF6D17C5DC3FCC64D9@CO6PR19MB4801.namprd19.prod.outlook.com>
In-Reply-To: <CO6PR19MB48012AD1BB3AF6D17C5DC3FCC64D9@CO6PR19MB4801.namprd19.prod.outlook.com>
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Date: Thu, 15 Apr 2021 18:20:17 -0400
Message-ID: <CAL7q81umUPsf6KVEHV9iHuswUqBkusvHB5CW2TN4vbXo_YJDhQ@mail.gmail.com>
To: Jerrid Plymale <jerrid.plymale@canyon-us.com>
Message-ID-Hash: CCAPDNOBC3EHBWDTWNPBDFMAP5LNTV52
X-Message-ID-Hash: CCAPDNOBC3EHBWDTWNPBDFMAP5LNTV52
X-MailFrom: jonathon.pendlum@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <USRP-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Using RFNoC RX and TX blocks in one flowgraph that interfaces with an X310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CCAPDNOBC3EHBWDTWNPBDFMAP5LNTV52/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3557206023571924832=="

--===============3557206023571924832==
Content-Type: multipart/alternative; boundary="000000000000cece0105c00a46e7"

--000000000000cece0105c00a46e7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jerrid,

Does the error still happen when you add the copy between the RX / TX
streamers?

Jonathon

On Thu, Apr 15, 2021 at 6:01 PM Jerrid Plymale <jerrid.plymale@canyon-us.co=
m>
wrote:

> Hello All,
>
>
>
> I have been running into a problem this week that I was hoping to get som=
e
> help with. I am working on transitioning to using the RFNoC RX and TX
> blocks in a flowgraph to control passthrough of signals in the USRP X310 =
I
> am using. Attached is an image of the flowgraph that I am trying to get
> working. I have been able to get the RX chain and the TX chain to work
> individually, but when I try to run the flowgraph shown I get the followi=
ng
> error from gnuradio-companion:
>
>
>
> RunTimeError: RFNoCError: RoutingError: 0/Radio#1:0 is neither statically
> connected to 0/DDC#0:0 nor to an SEP!
>
>
>
> Any insight to what=E2=80=99s causing this problem and how to solve it wo=
uld be
> greatly appreciated.
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

--000000000000cece0105c00a46e7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Jerrid,<div><br></div><div>Does the error still happen =
when=C2=A0you add the copy between the RX / TX streamers?</div><div><br></d=
iv><div>Jonathon</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">On Thu, Apr 15, 2021 at 6:01 PM Jerrid Plymale &lt;<a=
 href=3D"mailto:jerrid.plymale@canyon-us.com">jerrid.plymale@canyon-us.com<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">





<div lang=3D"EN-US" style=3D"overflow-wrap: break-word;">
<div class=3D"gmail-m_-8004445159571352756WordSection1">
<p class=3D"MsoNormal">Hello All,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I have been running into a problem this week that I =
was hoping to get some help with. I am working on transitioning to using th=
e RFNoC RX and TX blocks in a flowgraph to control passthrough of signals i=
n the USRP X310 I am using. Attached
 is an image of the flowgraph that I am trying to get working. I have been =
able to get the RX chain and the TX chain to work individually, but when I =
try to run the flowgraph shown I get the following error from gnuradio-comp=
anion:
<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">RunTimeError: RFNoCError: RoutingError: 0/Radio#1:0 =
is neither statically connected to 0/DDC#0:0 nor to an SEP!<u></u><u></u></=
p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Any insight to what=E2=80=99s causing this problem a=
nd how to solve it would be greatly appreciated.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Best Regards,<u></u><u></u></p>
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

--000000000000cece0105c00a46e7--

--===============3557206023571924832==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3557206023571924832==--
