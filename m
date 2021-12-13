Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D2686473062
	for <lists+usrp-users@lfdr.de>; Mon, 13 Dec 2021 16:26:12 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1D958385388
	for <lists+usrp-users@lfdr.de>; Mon, 13 Dec 2021 10:26:12 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="PzTMcXiR";
	dkim-atps=neutral
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
	by mm2.emwd.com (Postfix) with ESMTPS id D56CE3849E3
	for <usrp-users@lists.ettus.com>; Mon, 13 Dec 2021 10:25:17 -0500 (EST)
Received: by mail-yb1-f179.google.com with SMTP id q74so39074973ybq.11
        for <usrp-users@lists.ettus.com>; Mon, 13 Dec 2021 07:25:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=StShycA4rg0GYUbVSNW3h534z5mWmB4HQaimieicPyM=;
        b=PzTMcXiROWRcBANCSKWKdmCnDqrjwax7DZvrOT20HVlJldHgfwyZ5lx2/iswcz1KRI
         5iWHnGfJ77bbNPCTj9Sk6H+GzieuxtgxSOmmtn6gYhkcC1tCJLHawRm5bfqSB4YzKjPV
         QjzYNjupxQwRriB8cxjmw1FTTa+xlvpy5KUrqKYC0MTzfxULeIXPchFJ4RAS1SKWw471
         3GYRRvasfK71g1G0VV/KTD1+6nbp20hvVXI0WgpIWL5Aw519q62kiXAXYokddoVZgQIy
         FwCJWGbst/mzf7V164qbhlQibUEluQG31uHfl3SSMbER/cG/h17w1uePQUHUSlgtT9r5
         WGTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=StShycA4rg0GYUbVSNW3h534z5mWmB4HQaimieicPyM=;
        b=7L3tkarDkPrn6pSexdQf1gtG+9rJhelG3gPoXx0ngtU5yEbmxc8jv6Q0R9gDtR5BH+
         Hi5SrzWxFr2cIDqpkwuw9sWRmJzSB71wsakR0xsXA6Dlz7KzvijoFoK8Q3wNLetuA8NX
         mvACHc6vY3JLnfVseKXMEEd3Tq19+CDAFudllBdTYjEo1jV74LL3PoDTfY4eFPic/0SM
         nC6YQJo9PVLuBYPDNh5H6fxniBAVn6D8YMEGjTh9vlc+CP1QoL7KJswMfvd+MHDnc3mT
         Yu9uhDsQE6sa+jpPjRql5piNTnlIGzTRu+b12tDqtSCnicb7EjgFtHsAPBn9ksm1I/DJ
         gZ+Q==
X-Gm-Message-State: AOAM532Wcg6T40+4GryWtlXQ/svAAfxik1uvgwUv/YwEMBJa2x8Qzdmd
	Oc4phYeR2XCewtgBQNWfs3jBoL3u1l7a4Om3BLYxaA==
X-Google-Smtp-Source: ABdhPJw6Leehw5TNDHOvG5Q5DCb67iYBruwfCUsSysh0a+ZgAkdf+D2Q/8VIgR0HTik8LVgXpmKyQwhtbiR5yh3oFiM=
X-Received: by 2002:a25:31d5:: with SMTP id x204mr33398548ybx.750.1639409116697;
 Mon, 13 Dec 2021 07:25:16 -0800 (PST)
MIME-Version: 1.0
References: <pDx8ClDRgOJoYyr1t8oX3pYgHfcCNhdvqGXmAlOjXU@lists.ettus.com> <77d8190a-8f27-9297-0ba7-f953251ed02f@gmail.com>
In-Reply-To: <77d8190a-8f27-9297-0ba7-f953251ed02f@gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Mon, 13 Dec 2021 10:25:05 -0500
Message-ID: <CAB__hTS=Hc9KcGSOhdYrFLP2NnuTzLKgPLFJ1fs+UwyLnUpe=A@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: 6E4YUWJGQ76FA256WIPX6OHGUZ2FXG5Y
X-Message-ID-Hash: 6E4YUWJGQ76FA256WIPX6OHGUZ2FXG5Y
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RuntimeError: Device reported an error during initialization
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6E4YUWJGQ76FA256WIPX6OHGUZ2FXG5Y/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0648808415905939495=="

--===============0648808415905939495==
Content-Type: multipart/alternative; boundary="0000000000000b4adc05d308ae13"

--0000000000000b4adc05d308ae13
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

One thing that bothers me about this problem is related to versions. I do
not know what is meant by "gnuradio 2" or gnuradio 3".  If "gnuradio 2"
means a 2.x version, then I think this is extremely old. And if "gnuradio
3" means 3.x version, then I would ask which 3.x version?  And, then there
is UHD 3.10.x, which seems to be the version you are trying to install.
This is also very old.

It seems that the following is true (please comment if part of this is
false):
1) you first tried to update the FPGA bitstream using uhd_image_loader, but
the update failed for some reason and now the X310 does not boot up
correctly
2) now, you can operate the X310 if you first load the FPGA bitstream (UHD
3.10) via JTAG, but of course, this JTAG update must happen with each power
cycle
3) When running with UHD 3.10 after loading via JTAG, you are still unable
to use uhd_image_loader to update the X310 non-volatile flash over Ethernet
(it is not clear to me if the uhd_image_loader application is using the
*exact* same bitstream as the one you are loading via JTAG).

In general, my recommendation would be to forget about gnuradio for now and
download and install uhd 4.1 (or at least 3.15). Then, use JTAG to load the
bitstream from the installed "images" folder.  If successful,
"uhd_usrp_probe" should now run successfully and show the UHD version as
4.1 (or 3.15) (if not, then perhaps your system has multiple UHD versions
installed and this may be the problem). Then, use uhd_image_loader with the
"--fpga-path=3D<path to installed 'bitstream file'>" option to specify the
exact same file as used with JTAG.  Note that this could be done using
either a 1G or 10G connection. But, if you want to use the 1G connection,
you will need to load the "HG" image during the JTAG programming and use
the left-most SFP+ port with the 1G SFP+/RJ45 adapter.
Rob


On Mon, Dec 13, 2021 at 8:49 AM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 2021-12-13 07:50, iw1fnw@gmail.com wrote:
> >
> > We received the board at end of June 2020 and not used that much due
> > to Covid restriction in accessing the lab.
> >
> > I think it was working with =E2=80=9Cold=E2=80=9D GNU-Radio (version 2)=
, but in May
> > 2021 we updated everything to GNU-Radio 3 (including Linux
> > distribution, etc.). At that point, I had problem since GNU-Radio was
> > complaining that the FPGA image was not in line with the USRP drivers,
> > and it asked to upgrade it using the image loader.
> >
> > I did it, and the USPR stopped working (i.e. the image loading was not
> > successful, with same above error). We recovered using Vivado, and
> > this is where we are now.
> >
> > I may try to upload the image using the PCIe interface on another
> > machine. That is the only other thing that I can think about now.
> >
> >
> >
> Just to confirm--you're running the as-supplied-by-Ettus images on the
> X310 when this happens?
>
> Also make sure that you're loading images that are compatible with the
> version of UHD you're running.  Use
>
> uhd_images_downloader
>
> To download compatible images to your PC.
>
> IF that fails, you could try following the "unbricking" procedure here:
>
> https://kb.ettus.com/X300/X310_Device_Recovery
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000000b4adc05d308ae13
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">One thing that bothers me about this problem is related to=
 versions. I do not know what is meant by &quot;gnuradio 2&quot; or gnuradi=
o 3&quot;.=C2=A0 If &quot;gnuradio 2&quot; means a 2.x version, then I thin=
k this is extremely old. And if &quot;gnuradio 3&quot; means 3.x version, t=
hen I would ask which 3.x version?=C2=A0 And, then there is UHD 3.10.x, whi=
ch seems to be the version you are trying to install. This is also very old=
.<div><br></div><div>It seems that the following is true (please comment if=
 part of this is false):</div><div>1) you first tried to update the FPGA bi=
tstream using uhd_image_loader, but the update failed for some reason and n=
ow the X310 does not boot up correctly</div><div>2) now, you can operate th=
e X310 if you first load the FPGA bitstream (UHD 3.10) via JTAG, but of cou=
rse, this JTAG update must happen with each power cycle</div><div>3) When r=
unning with UHD 3.10 after loading via JTAG, you are still unable to use uh=
d_image_loader to update the X310 non-volatile flash over Ethernet (it is n=
ot clear to me if the uhd_image_loader application is using the *exact* sam=
e bitstream as the one you are loading via JTAG).</div><div><br></div><div>=
In general, my recommendation would be to forget about gnuradio for now and=
 download and install uhd 4.1 (or at least 3.15). Then, use JTAG to load th=
e bitstream from the installed &quot;images&quot; folder.=C2=A0 If successf=
ul, &quot;uhd_usrp_probe&quot; should now run successfully and show the UHD=
 version as 4.1 (or 3.15) (if not, then perhaps your system has multiple UH=
D versions installed and this may be the problem). Then, use uhd_image_load=
er with the &quot;--fpga-path=3D&lt;path to installed &#39;bitstream file&#=
39;&gt;&quot; option to specify the exact same file as used with JTAG.=C2=
=A0 Note that this could be done using either a 1G or 10G connection. But, =
if you want to use the 1G connection, you will need to load the &quot;HG&qu=
ot; image during the JTAG programming and use the left-most SFP+ port with =
the 1G SFP+/RJ45 adapter.</div><div>Rob</div><div><br></div></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Dec 13,=
 2021 at 8:49 AM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.=
com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">On 2021-12-13 07:50, <a href=3D"mailto:iw1fnw@g=
mail.com" target=3D"_blank">iw1fnw@gmail.com</a> wrote:<br>
&gt;<br>
&gt; We received the board at end of June 2020 and not used that much due <=
br>
&gt; to Covid restriction in accessing the lab.<br>
&gt;<br>
&gt; I think it was working with =E2=80=9Cold=E2=80=9D GNU-Radio (version 2=
), but in May <br>
&gt; 2021 we updated everything to GNU-Radio 3 (including Linux <br>
&gt; distribution, etc.). At that point, I had problem since GNU-Radio was =
<br>
&gt; complaining that the FPGA image was not in line with the USRP drivers,=
 <br>
&gt; and it asked to upgrade it using the image loader.<br>
&gt;<br>
&gt; I did it, and the USPR stopped working (i.e. the image loading was not=
 <br>
&gt; successful, with same above error). We recovered using Vivado, and <br=
>
&gt; this is where we are now.<br>
&gt;<br>
&gt; I may try to upload the image using the PCIe interface on another <br>
&gt; machine. That is the only other thing that I can think about now.<br>
&gt;<br>
&gt;<br>
&gt;<br>
Just to confirm--you&#39;re running the as-supplied-by-Ettus images on the =
<br>
X310 when this happens?<br>
<br>
Also make sure that you&#39;re loading images that are compatible with the =
<br>
version of UHD you&#39;re running.=C2=A0 Use<br>
<br>
uhd_images_downloader<br>
<br>
To download compatible images to your PC.<br>
<br>
IF that fails, you could try following the &quot;unbricking&quot; procedure=
 here:<br>
<br>
<a href=3D"https://kb.ettus.com/X300/X310_Device_Recovery" rel=3D"noreferre=
r" target=3D"_blank">https://kb.ettus.com/X300/X310_Device_Recovery</a><br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000000b4adc05d308ae13--

--===============0648808415905939495==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0648808415905939495==--
