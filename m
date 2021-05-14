Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C6BC38137A
	for <lists+usrp-users@lfdr.de>; Sat, 15 May 2021 00:04:45 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7F1CF384497
	for <lists+usrp-users@lfdr.de>; Fri, 14 May 2021 18:04:44 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="WfmyS7O8";
	dkim-atps=neutral
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
	by mm2.emwd.com (Postfix) with ESMTPS id DA14F383FE2
	for <usrp-users@lists.ettus.com>; Fri, 14 May 2021 18:03:55 -0400 (EDT)
Received: by mail-ot1-f45.google.com with SMTP id g15-20020a9d128f0000b02902a7d7a7bb6eso517033otg.9
        for <usrp-users@lists.ettus.com>; Fri, 14 May 2021 15:03:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=DvegWj+Bcgbfl+CcqbwJHRI+GK+yrpkavYulWsCaZpc=;
        b=WfmyS7O8/UnlcZM/JIVaPp8bFwXb1D2OZ35K+p0P7+zNc7eXYn1qNvVTMGY2C4bOW6
         QpBMyrlMBuzB8m5TxSl0TvU9cJi+uqvm5WDhIfw5OVr+LcwpVShUq0ATMxRVHll/0qs2
         rYQz76QsB7E/bpbhngDnAMSu4NPupY+yV5vNsOXUrng1QxqT7g8NDwqlggj0DBBsd+8V
         XPo/0u+xX90zADTbNiYgXILylB3TBVEPF3bdrj80BLVjAiOLcGjsSDsn1SYIovyB7HSP
         diyi7Zb6HcCI3Pu1T+ggCBBhXVcVstoumhmcjuNGz/T/m/TrmHXOE+gHGpy74wSuo0V3
         Lb1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=DvegWj+Bcgbfl+CcqbwJHRI+GK+yrpkavYulWsCaZpc=;
        b=hbd+49ZLLEYx8t5TD/Rsz6QopAAVQsefKzlovw3gpBmmopQu2wdIi6OMNuyUn9NEz2
         bjaRgCVGJGo6+mOSqIQzSeqObt+vg8DDsKZfoic13AYI/FBTDuEOYwQ7CRn6auf4A1Fr
         J/RYJFUxiR4vkALTDOi63rhy2hIbP/7pAG3/A6yT5AtFTNZ24yE3VwothejBXfoCm3vV
         APqbu0zkoKDrMVbDBI+rnUaZ6AcP3W/GuBQqTuaydj81fZfDqg3CiBfaY9KcOibj2q9I
         56cUrAV67cj+sI4TEaS4ovxT0v2M+Kqmfb0saofxrLaqHDDuZiABeTqTnCIl9bz2x6bW
         aWGQ==
X-Gm-Message-State: AOAM530MLNzfMQwWn8McrEXBE68LB30fNpGvF1UrlkUlxdka5MX4GrCt
	DGHTxKz9ERFzrbjSQcc+nH//TLIERjVcEqG2KvV0Yj2RvfY=
X-Google-Smtp-Source: ABdhPJzlQ1n6fjpTmYL6P/D6uoykMDbjDAsrOel7Vowgzqmg3ACWat3okNNzZjMgaHzUQZeoix/GRCh1NI2K1aelQko=
X-Received: by 2002:a05:6830:208e:: with SMTP id y14mr40360977otq.15.1621029835185;
 Fri, 14 May 2021 15:03:55 -0700 (PDT)
MIME-Version: 1.0
References: <BLAPR09MB6612AA4E4BEC9AB9EC4D73C8D9509@BLAPR09MB6612.namprd09.prod.outlook.com>
 <12712_1621024152_609EDD98_12712_124_1_CAEXYVK4M7VXi8vAaXpneJ_hVvwbaLPQD+Q9vLO7XJvjbifSDvw@mail.gmail.com>
 <BLAPR09MB6612480376497870AC78363FD9509@BLAPR09MB6612.namprd09.prod.outlook.com>
In-Reply-To: <BLAPR09MB6612480376497870AC78363FD9509@BLAPR09MB6612.namprd09.prod.outlook.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Fri, 14 May 2021 18:03:42 -0400
Message-ID: <CAEXYVK521Vi5zDzxbkCLdMAVdgBcEoXM1yBXy7seMW=XcPtzbw@mail.gmail.com>
To: Jeffrey P Long <jplong@mitre.org>
Message-ID-Hash: Y3GVNAWSJXZ2YQW2KOH2RHORHZBYNLFS
X-Message-ID-Hash: Y3GVNAWSJXZ2YQW2KOH2RHORHZBYNLFS
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXT] Re: RFNOC block name?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Y3GVNAWSJXZ2YQW2KOH2RHORHZBYNLFS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2904095327533975712=="

--===============2904095327533975712==
Content-Type: multipart/alternative; boundary="0000000000007f213205c2516b7c"

--0000000000007f213205c2516b7c
Content-Type: text/plain; charset="UTF-8"

On Fri, May 14, 2021 at 5:48 PM Jeffrey P Long <jplong@mitre.org> wrote:

> Ok I had it up in /usr/lib but I moved it down to the root folder and it
> basically gave the same thing with additional errors:
>
> Kind of look like it is still not finding it. Did I set it wrong?
>
>
>
> root@ni-e320-31DCD15:/usr/lib# export UHD_MODULE_PATH=~/
> root@ni-e320-31DCD15:/usr/lib# uhd_find_devices
> Error: EnvironmentError: OSError: dlopen failed to load
> "/home/root/.viminfo"
> Error: EnvironmentError: OSError: dlopen failed to load
> "/home/root/e320.bit"
> Error: EnvironmentError: OSError: dlopen failed to load
> "/home/root/librfnoc-txcore.so"
> Error: EnvironmentError: OSError: dlopen failed to load
> "/home/root/.bash_history"
> [INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100;
> UHD_4.0.0.0-0-g90ce6062
> --------------------------------------------------
> -- UHD Device 0
> --------------------------------------------------
> Device Address:
>     serial: 31DCD15
>     claimed: False
>     mgmt_addr: 127.0.0.1
>     product: e320
>     type: e3xx
>

Maybe looks like it's compiled for a different architecture?

Specifically looking at:

  Error: EnvironmentError: OSError: dlopen failed to load
"/home/root/librfnoc-txcore.so"

Guessing that .so is x86 and not arm?

Compile it for the target architecture it runs on?

Brian

>

--0000000000007f213205c2516b7c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Fri, May 14, 2021 at 5:48 PM Jeffrey P=
 Long &lt;<a href=3D"mailto:jplong@mitre.org">jplong@mitre.org</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">





<div lang=3D"EN-US" style=3D"overflow-wrap: break-word;">
<div class=3D"gmail-m_-579819349667747084WordSection1">
<p class=3D"MsoNormal">Ok I had it up in /usr/lib but I moved it down to th=
e root folder and it basically gave the same thing with additional errors:<=
u></u><u></u></p>
<p class=3D"MsoNormal">Kind of look like it is still not finding it. Did I =
set it wrong?<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">root@ni-e320-31DCD15:/usr/lib# export UHD_MODULE_PAT=
H=3D~/ =C2=A0 =C2=A0 =C2=A0<br>
root@ni-e320-31DCD15:/usr/lib# uhd_find_devices <br>
Error: EnvironmentError: OSError: dlopen failed to load &quot;/home/root/.v=
iminfo&quot;<br>
Error: EnvironmentError: OSError: dlopen failed to load &quot;/home/root/e3=
20.bit&quot;<br>
Error: EnvironmentError: OSError: dlopen failed to load &quot;/home/root/li=
brfnoc-txcore.so&quot;<br>
Error: EnvironmentError: OSError: dlopen failed to load &quot;/home/root/.b=
ash_history&quot;<br>
[INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100; UHD_4.0.0.0-0-g90c=
e6062<br>
--------------------------------------------------<br>
-- UHD Device 0<br>
--------------------------------------------------<br>
Device Address:<br>
=C2=A0 =C2=A0 serial: 31DCD15<br>
=C2=A0 =C2=A0 claimed: False<br>
=C2=A0 =C2=A0 mgmt_addr: 127.0.0.1<br>
=C2=A0 =C2=A0 product: e320<br>
=C2=A0 =C2=A0 type: e3xx<br></p></div></div></blockquote><div><br></div><di=
v>Maybe looks like it&#39;s compiled for a different architecture?</div><di=
v><br></div><div>Specifically looking at:</div><div><br></div><div>=C2=A0 E=
rror: EnvironmentError: OSError: dlopen failed to load &quot;/home/root/lib=
rfnoc-txcore.so&quot;</div><div><br></div><div>Guessing that .so is x86 and=
 not arm?</div><div><br></div><div>Compile it for the target architecture i=
t runs on?</div><div><br></div><div>Brian</div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex"><div lang=3D"EN-US" style=3D"overflow-wrap: break-wor=
d;"><div class=3D"gmail-m_-579819349667747084WordSection1"><div><div><div>
</div>
</div>
</div>
</div>
</div>

</blockquote></div></div>

--0000000000007f213205c2516b7c--

--===============2904095327533975712==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2904095327533975712==--
