Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A6014AB4C7
	for <lists+usrp-users@lfdr.de>; Mon,  7 Feb 2022 07:38:35 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1C16F385260
	for <lists+usrp-users@lfdr.de>; Mon,  7 Feb 2022 01:38:34 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="RvQMQcY9";
	dkim-atps=neutral
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 3D69438505D
	for <usrp-users@lists.ettus.com>; Mon,  7 Feb 2022 01:37:29 -0500 (EST)
Received: by mail-yb1-f178.google.com with SMTP id 124so36404579ybw.6
        for <usrp-users@lists.ettus.com>; Sun, 06 Feb 2022 22:37:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=+DD+UdK0NrNwYUpM2yuHJ9XCcRLevluvaH8sbvZw12s=;
        b=RvQMQcY9/ys55kzyBZ6N+QCokQrvhnEmlHYoSV7zrRPOOR/2IOPyfjXqNX799Y3Pd5
         MYSJG+5eOWK16UzDvwMZoZkeFuGZTL4O3Sgb1xS5JiwMVgZ8H1Eh8+Gn+ya2lvN4DLGQ
         FyekCa2lqzeyI/tEXJqezUftIfyX5UjgucqH+h0XZlr9Yc1bSDh+hNtQZlQ0rQNLRPf4
         lyu9MW83nywRNvjPP3wV/8ws4rFJ62/ETtqLfPlLRaA+0vZiHxX/7O00bWqxu2ot9537
         4JovR+yKWpVCkSQlbMBYjFsf3lBo0UYzJY5u4Lg/Bsq5DrsmYrJG+qe31ugbKvU8dcFE
         KeLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=+DD+UdK0NrNwYUpM2yuHJ9XCcRLevluvaH8sbvZw12s=;
        b=J+1YTGSGs6IceDRmMkvEbDQ0zHVr0uJr7NCgru1NpnEt21dWTL5nOVLjyeeCXyLpmC
         5Ou5GLPMEva/32pagAbP1rONDlB5nmkAm6W7sbIUULNtWbHtqbMnE6PrR7FI9gckMmpE
         l5u4E6EW2e2GbnBs4AldIJAs10CbDbpU4oxYUYSX5PWNDkmVrf4jpoSr+oxkOwfnXbtd
         5rmvPARSvZ5GNkuw0X0hKPsyIe72qGSvC8HO9bi+TMZOhafsiAoy79kPo8sbzCmO1rQY
         MrmXN+rKQuXWS9gqj7pSp9lFqAVUqCwh+wTr5VyLolLlwbRKx5aRspDijQyZ6Epke9dH
         fejg==
X-Gm-Message-State: AOAM5327Utwt+ZqyY4QpbOzI4yEgfaxT/bQUN70GgTm6TSHP0rXvErG1
	a/LrrlzFBOGzTp1gkaqz0U5K+OgOBzULLoqjjW1wEQKAF7vkJW9S
X-Google-Smtp-Source: ABdhPJw11qVZD8s2a+CSgml1OVmRx5vpeh5KvO628COvjSLZIWyF8OHtoR+zYjpwfsLusQWlRFNuSZZz64fF+aw9rko=
X-Received: by 2002:a25:328a:: with SMTP id y132mr4314381yby.575.1644215847844;
 Sun, 06 Feb 2022 22:37:27 -0800 (PST)
MIME-Version: 1.0
References: <CAA=S3Pt1itmEnH62eLNapn=3V3GBOyLNTXqzDrjwK_PPgTi-fQ@mail.gmail.com>
In-Reply-To: <CAA=S3Pt1itmEnH62eLNapn=3V3GBOyLNTXqzDrjwK_PPgTi-fQ@mail.gmail.com>
From: sp h <stackprogramer@gmail.com>
Date: Mon, 7 Feb 2022 10:07:08 +0330
Message-ID: <CAA=S3PsuuGopDQEoi-fcfTBQ13NPEOEHi5RVn2rMhbZhVSH-rQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: AT5TXKYTFBM5MDK55QFARUN6IWO3U6MC
X-Message-ID-Hash: AT5TXKYTFBM5MDK55QFARUN6IWO3U6MC
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Vivado: Version 2019.1 not found error when i want to a built a custom RFNOC block
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AT5TXKYTFBM5MDK55QFARUN6IWO3U6MC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3178570410025988338=="

--===============3178570410025988338==
Content-Type: multipart/alternative; boundary="0000000000008b7e3905d767d50b"

--0000000000008b7e3905d767d50b
Content-Type: text/plain; charset="UTF-8"

Finally, I used the below command to built bitstream for FPGA...

rfnoc_image_builder  -F /home/sp/Documents/uhd-4.1.0.5/fpga   -I
/home/sp/Documents/rfnoc-example/include/rfnoc  -y
/home/sp/Documents/rfnoc-example/icores/x310_rfnoc_image_core.yml
But I was faced with a strange error...
RFNOC example for gain that there is in UHD file has errors...

[ERR] 1 unresolved clk domain(s)
[ERR]     gain0:ce
[ERR] Please specify the clock(s) to connect





On Sun, Feb 6, 2022 at 7:38 PM sp h <stackprogramer@gmail.com> wrote:

> I copied the RFNOC example in a folder. for building, I used these
> commands...
> Building and Installing an OOT Module
> mkdir build
> cd build
> cmake .. -DUHD_FPGA_DIR=/home/sp/Documents/uhd-4.1.0.5/fpga
> make
> Building an FPGA Image with OOT Blocks
> when I want to build FPGA I used these commands...
>
> make x310_rfnoc_image_core
>
> I faced with this error
> *Errors:*
>
>
>
> *Setting up a 64-bit FPGA build environment for the USRP-X3x0...- Vivado:
> Version 2019.1 not found in /opt/Xilinx/Vivado (ERROR.. Builds and
> simulations will not work)          Use the --vivado-path option to
> override the search pathBuilt target x310_rfnoc_image_core*
>
> When I used these options I was faced another error...
>
> make x310_rfnoc_image_core --vivado-path=/home/sp/xilinx/Vivado
>
> *Errors:*
> make: unrecognized option '--vivado-path=/home/sp/xilinx/Vivado'
>
> How can build Gain RFNOC example successfully?
> thanks in advance
>
>
>
>
>
>

--0000000000008b7e3905d767d50b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Finally, I used the below command to built bitstream for F=
PGA...<div><br></div><div>rfnoc_image_builder =C2=A0-F /home/sp/Documents/u=
hd-4.1.0.5/fpga =C2=A0 -I /home/sp/Documents/rfnoc-example/include/rfnoc =
=C2=A0-y /home/sp/Documents/rfnoc-example/icores/x310_rfnoc_image_core.yml<=
br><div>But I was=C2=A0faced with=C2=A0a strange error...</div></div><div>R=
FNOC example for gain that there is in UHD file has errors...</div><div><br=
></div><div>[ERR] 1 unresolved clk domain(s)<br>[ERR] =C2=A0 =C2=A0 gain0:c=
e<br>[ERR] Please specify the clock(s) to connect<br></div><div><br></div><=
div><br></div><div><br></div><div><br></div></div><br><div class=3D"gmail_q=
uote"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, Feb 6, 2022 at 7:38 PM =
sp h &lt;<a href=3D"mailto:stackprogramer@gmail.com">stackprogramer@gmail.c=
om</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
"><div dir=3D"ltr">I copied the RFNOC example in a folder. for building, I =
used these commands...<div><h3 style=3D"color:rgb(0,0,0);background-image:n=
one;background-position:initial;background-size:initial;background-repeat:i=
nitial;background-origin:initial;background-clip:initial;margin:0.3em 0px 0=
px;overflow:hidden;padding-top:0.5em;padding-bottom:0px;border-bottom:none;=
line-height:1.6;font-family:&quot;Lucida Sans Unicode&quot;,&quot;Lucida Gr=
ande&quot;,sans-serif"><span id=3D"gmail-m_7031773555840970314gmail-Buildin=
g_and_Installing_an_OOT_Module"><font size=3D"2">Building and Installing an=
 OOT Module</font></span></h3></div><div>mkdir build=C2=A0<br><div>cd build=
</div>cmake .. -DUHD_FPGA_DIR=3D/home/sp/Documents/uhd-4.1.0.5/fpga<br><div=
>make<br></div></div><div><h3 style=3D"color:rgb(0,0,0);background-image:no=
ne;background-position:initial;background-size:initial;background-repeat:in=
itial;background-origin:initial;background-clip:initial;margin:0.3em 0px 0p=
x;overflow:hidden;padding-top:0.5em;padding-bottom:0px;border-bottom:none;l=
ine-height:1.6;font-family:&quot;Lucida Sans Unicode&quot;,&quot;Lucida Gra=
nde&quot;,sans-serif"><span id=3D"gmail-m_7031773555840970314gmail-Building=
_an_FPGA_Image_with_OOT_Blocks"><font size=3D"2">Building an FPGA Image wit=
h OOT Blocks</font></span></h3><div><span><font size=3D"2">when I want to b=
uild FPGA I used these commands...</font></span></div><div><span><font size=
=3D"2"><br></font></span></div>make x310_rfnoc_image_core<br></div><div><br=
></div><div>I faced with this error=C2=A0</div><div><b>Errors:</b></div><di=
v><b>Setting up a 64-bit FPGA build environment for the USRP-X3x0...<br>- V=
ivado: Version 2019.1 not found in /opt/Xilinx/Vivado (ERROR.. Builds and s=
imulations will not work)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Use the --v=
ivado-path option to override the search path<br>Built target x310_rfnoc_im=
age_core</b><br></div><div><br></div><div>When I used these options I was=
=C2=A0faced another error...</div><div><br></div><div>make x310_rfnoc_image=
_core --vivado-path=3D/home/sp/xilinx/Vivado<br></div><div><br></div><div><=
b>Errors:</b></div><div>make: unrecognized option &#39;--vivado-path=3D/hom=
e/sp/xilinx/Vivado&#39;<br></div><div><br></div><div>How can build Gain RFN=
OC example successfully?</div><div>thanks in=C2=A0advance</div><div><br></d=
iv><div><br></div><div><br></div><div><br></div><div><br></div></div>
</blockquote></div>

--0000000000008b7e3905d767d50b--

--===============3178570410025988338==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3178570410025988338==--
