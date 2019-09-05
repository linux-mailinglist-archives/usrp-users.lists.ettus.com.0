Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E7FD3AAB1C
	for <lists+usrp-users@lfdr.de>; Thu,  5 Sep 2019 20:34:43 +0200 (CEST)
Received: from [::1] (port=37070 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i5wag-00064X-5t; Thu, 05 Sep 2019 14:34:42 -0400
Received: from mail-ot1-f42.google.com ([209.85.210.42]:36022)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <michael.dickens@ettus.com>)
 id 1i5wac-0005yZ-Lf
 for usrp-users@lists.ettus.com; Thu, 05 Sep 2019 14:34:38 -0400
Received: by mail-ot1-f42.google.com with SMTP id 67so3217392oto.3
 for <usrp-users@lists.ettus.com>; Thu, 05 Sep 2019 11:34:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KkMHiumvm2pmJdBorAtEL2ucL1NvzV05CF0kP9x6OiE=;
 b=h5PXPhenq9grVSNiC2cHuaoPCdxJNp2VxYxMyJ89EQEAktGJRNM4iLeNUzP0DxkQt+
 cGjRmzqDnea4xVMTmHlrvoabjpCNdkJNsvfQJKuwjc49Db0dVCl1TJHMmAVBHOGnQNJK
 ZoGBiVKe132v5KrD+1QMTCIgv4aQvZbfboz8LmuEO3H4uoomT5OHHnrw+hHTx4QCQzdU
 WwtOZknqjPDuyk0RP4nuPMZYOC5vg3ft2+5kCkp7aKlsE34iebMWP5GXavoj4UsF5eta
 2wuAYPpKAzTQ7xBy6Fdng/pJcwBxaOeOKleblxc2awI5f1DtYALKzpXQM4Tk4FXECz7t
 IjYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KkMHiumvm2pmJdBorAtEL2ucL1NvzV05CF0kP9x6OiE=;
 b=GG6IgEx4fmu/jGF/WlNbJTnV40TZr/TeM7JP0tyFOsupHtpEWzlrEsPA3Ouxp3IGD4
 fV/OeYULoPprkz8v3ZDDnQGtO9nAZX6ijzpy8/pxgvZh/BZjXCrv0FmTcWVtD1n6S00Z
 ZheERBRCcF/XrFch3yjF6eiElURvECNgBHZO1FnQ2AXcHMF/RdzPddi4byb5CIge4H4W
 K8Tm68hglG2WVLo7cSlNqnZ0oY0aVA3+fOY7uwXfYUmmMiRz39MVaVQbkvUxxKOo92xv
 5oN0YyOLDy6wnuIscHMWv/0xrrA/3fg+ipFwRVmlZo84lBPE9U4x5axoiVbmDqgNFpC6
 5Zwg==
X-Gm-Message-State: APjAAAW6MHCp3Kdxb9ngeoLsASQ9eThD9mvCEzuepC5FNybgIhxnMgS6
 AlmFcMXvlip02KT2WS4ThosXx6s/FndAbdEqGwR1j9LK
X-Google-Smtp-Source: APXvYqy0+8s7wyJLNoS3ZDBj7eDDvWEJSI9yBIbmEH1nn5Pb3IqFFoleh6kMyusuOuWp6FfUjmPqhXHJHzN1OVGXpC4=
X-Received: by 2002:a9d:3f4b:: with SMTP id m69mr3856255otc.301.1567708437926; 
 Thu, 05 Sep 2019 11:33:57 -0700 (PDT)
MIME-Version: 1.0
References: <5b42d964-619f-3034-5b9a-44f464afe630@bham.ac.uk>
In-Reply-To: <5b42d964-619f-3034-5b9a-44f464afe630@bham.ac.uk>
Date: Thu, 5 Sep 2019 14:33:46 -0400
Message-ID: <CAGNhwTOr8=U6fwpw9psPH0DeBaDevjXCnBedCBfgnbxE_M4XAw@mail.gmail.com>
To: J Subash <j.subash@bham.ac.uk>
Subject: Re: [USRP-users] sc16 - complex<int16_t> to numpy float
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
From: Michael Dickens via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Michael Dickens <michael.dickens@ettus.com>
Cc: USRP list <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7892995234229398320=="
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

--===============7892995234229398320==
Content-Type: multipart/alternative; boundary="0000000000008dea200591d29034"

--0000000000008dea200591d29034
Content-Type: text/plain; charset="UTF-8"

Hi JS - Maybe check out this Python example from UHD <
https://github.com/EttusResearch/uhd/blob/master/host/examples/python/rx_to_file.py
>
... it does Rx to file, and can save as NumPy format ... which could then
presumably be easily read back into NumPy. - MLD

On Thu, Sep 5, 2019 at 11:08 AM J Subash via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
>
> I am using a B200 to save samples on the host as 'short' (as described in
> the uhd <https://github.com/EttusResearch/uhd>/host
> <https://github.com/EttusResearch/uhd/tree/master/host>/examples
> <https://github.com/EttusResearch/uhd/tree/master/host/examples>/
> rx_samples_to_file.cpp), which I believe is complex<int16_t>.
>
> I'd like to import this data into numpy and then convert it into floating
> point values. Is sc16 a fixed point representation, if yes what is the
> scaling factor. If no, how do I convert it into a numpy float in Python.
> Any help would be much appreciated. Thanks.
>
> BW
>
> JS
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>


-- 
Michael Dickens, Mac OS X Programmer

Ettus Research Technical Support

Email: support@ettus.com

Web: http://www.ettus.com

--0000000000008dea200591d29034
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi JS - Maybe check out this Python example from UHD &lt;=
=C2=A0<a href=3D"https://github.com/EttusResearch/uhd/blob/master/host/exam=
ples/python/rx_to_file.py">https://github.com/EttusResearch/uhd/blob/master=
/host/examples/python/rx_to_file.py</a>=C2=A0&gt; ... it does Rx to file, a=
nd can save as NumPy format ... which could then presumably=C2=A0be easily =
read back into NumPy. - MLD</div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Thu, Sep 5, 2019 at 11:08 AM J Subash via USR=
P-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.=
ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">
 =20

   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <p>Hi,</p>
    <p>I am using a B200 to save samples on the host as &#39;short&#39; (as
      described in the <tt><span class=3D"gmail-m_-7136052441403100718js-re=
po-root gmail-m_-7136052441403100718text-bold"><span class=3D"gmail-m_-7136=
052441403100718js-path-segment"><a href=3D"https://github.com/EttusResearch=
/uhd" target=3D"_blank"><span>uhd</span></a></span></span></tt><tt><span cl=
ass=3D"gmail-m_-7136052441403100718separator">/</span></tt><tt><span class=
=3D"gmail-m_-7136052441403100718js-path-segment"><a href=3D"https://github.=
com/EttusResearch/uhd/tree/master/host" target=3D"_blank"><span>host</span>=
</a></span></tt><tt><span class=3D"gmail-m_-7136052441403100718separator">/=
</span></tt><tt><span class=3D"gmail-m_-7136052441403100718js-path-segment"=
><a href=3D"https://github.com/EttusResearch/uhd/tree/master/host/examples"=
 target=3D"_blank"><span>examples</span></a></span></tt><tt><span class=3D"=
gmail-m_-7136052441403100718separator">/</span></tt><tt><span class=3D"gmai=
l-m_-7136052441403100718final-path">rx_samples_to_file.cpp),</span></tt>
      which I believe is complex&lt;int16_t&gt;.=C2=A0 <br>
    </p>
    <p>I&#39;d like to import this data into numpy and then convert it into
      floating point values. Is sc16 a fixed point representation, if
      yes what is the scaling factor. If no, how do I convert it into a
      numpy float in Python. Any help would be much appreciated. Thanks.<br=
>
    </p>
    <p>BW</p>
    <p>JS<br>
    </p>
  </div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr">Michael Dickens, Mac OS X Progr=
ammer<br><br>Ettus Research Technical Support<br><br>Email: <a href=3D"mail=
to:support@ettus.com" target=3D"_blank">support@ettus.com</a><br><br>Web: <=
a href=3D"http://www.ettus.com" target=3D"_blank">http://www.ettus.com</a><=
/div></div>

--0000000000008dea200591d29034--


--===============7892995234229398320==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7892995234229398320==--

