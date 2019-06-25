Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 11D3C555A3
	for <lists+usrp-users@lfdr.de>; Tue, 25 Jun 2019 19:14:07 +0200 (CEST)
Received: from [::1] (port=46642 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hfp18-0008Dw-Nn; Tue, 25 Jun 2019 13:14:02 -0400
Received: from mail-io1-f54.google.com ([209.85.166.54]:36791)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <bistromath@gmail.com>)
 id 1hfp14-00083l-SA
 for usrp-users@lists.ettus.com; Tue, 25 Jun 2019 13:13:58 -0400
Received: by mail-io1-f54.google.com with SMTP id h6so3200659ioh.3
 for <usrp-users@lists.ettus.com>; Tue, 25 Jun 2019 10:13:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=v8F/uMju3yhTV3zo088u2/5CVOTmUMpXu2iJ9UnNg9o=;
 b=dKcLC3uVtf0aW8GNqXBe1sa6g9fBwjz6QQUs8eJzqmqlDiEm4rknSuD1tKxGo7ksGj
 lPxKiNyiNVRrEanM5wb8MsKdXwSnDzlQ0tLFAbxrvl484O8IFHIFUPM4cZiTEFv19nyi
 K13ppphUxSySNOuhHGUK/1y/4izxdZwh8LifpIBO3Q+3CH79LG66s0qjNpzskKQQ+RRM
 pJxyDOzkeFOp3ZdPmXuaGuof++9QGleaEwuKARu+PgLvzEo7Mm0kDZcqz9K0J+oSkSlD
 0CEgyiOxHRQHsZemvXRumHB7bCkv7XqkE8ZOBBDMUIa1+2v6vhB6N+DyjEM0lo0DZ8MN
 pxhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=v8F/uMju3yhTV3zo088u2/5CVOTmUMpXu2iJ9UnNg9o=;
 b=Xtx3PHK8EBd67m7k3b8jXMfd/6lcEJWoU87h6fI3WiwYrzotiI87LFA+Ewb/jkhJjs
 Cr7Uv9gELPE9GccQrOz4Er+9UArsn1f6TVwLY0us3cLYJnPU/qZVJa2dN2shdN1e03sU
 1mHbtFFwMxhMRg3qQ3P8TKmXpryLmJR2+cOXEmlqVn9qde75bGyhfo1N9a6qIgITrvWZ
 sj0j2SgYvbZ156ABSJx/JSCdB7pftpspS4f5in92mqD4GV28/1qsSa5m9CWyzStyI9Wn
 KCe2ggDX0o+WrpBO7og9e77U/xzfSPnq+dbhwDofKho4NsMJKlSdda7jRKpkaf/cCGTw
 uxSQ==
X-Gm-Message-State: APjAAAWNmAZdfTvNcRNq/ai4aenL7+QjLnYuXBfqWga/ew5A0eoXTnHq
 JUnD6siIQ+baYntw2LnIgA+5cKWZBvV3fQCcrOw=
X-Google-Smtp-Source: APXvYqyrnYiq1UWVk8+8Iwa5EKN5i2GiEqv0wfO1GNNuRgdOi7PMOEfipHjphl5gvaIDl0sC9RJjOwg8qKSszbR3zYg=
X-Received: by 2002:a02:a493:: with SMTP id d19mr41869034jam.22.1561482798096; 
 Tue, 25 Jun 2019 10:13:18 -0700 (PDT)
MIME-Version: 1.0
References: <ef1b9d55-f392-7e20-9420-22aa8d15fa27@upc.edu>
 <sig.0079038766.CWXP265MB1143974874542068E9A474C8C1E30@CWXP265MB1143.GBRP265.PROD.OUTLOOK.COM>
 <b217ae97-19d1-2a51-cf6f-a2ae4719c4ff@upc.edu>
In-Reply-To: <b217ae97-19d1-2a51-cf6f-a2ae4719c4ff@upc.edu>
Date: Tue, 25 Jun 2019 10:10:06 -0700
Message-ID: <CA+JMMq9Kej3O_WuSUmWpfaSK_sP4ra8aS8FSPKGRLmF1-eJNoQ@mail.gmail.com>
To: =?UTF-8?B?QWRyacOgIEFtw6l6YWdh?= <adria.amezaga@upc.edu>
Subject: Re: [USRP-users] Samples do not get through RFNoC stream splitter
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
From: Nick Foster via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nick Foster <bistromath@gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8907752772556567541=="
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

--===============8907752772556567541==
Content-Type: multipart/related; boundary="0000000000008114ce058c290bc6"

--0000000000008114ce058c290bc6
Content-Type: multipart/alternative; boundary="0000000000008114cd058c290bc5"

--0000000000008114cd058c290bc5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yeah, that's the problem. The current RFNoC architecture doesn't allow for
two full-rate outputs from a single block, because the two outputs share
the same port on the crossbar.

The best solution is to write a custom splitter block which instantiates
two noc_shells, and wire them both to the crossbar in
rfnoc_ce_auto_inst_x310.v. If you get stuck doing this I can dig up some
example code.

Nick

On Tue, Jun 25, 2019 at 6:50 AM Adri=C3=A0 Am=C3=A9zaga via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi Jonas,
>
> I use the full sampling rate for the TX sweeps since most of the
> instantaneous bandwidth of the UBX is used.
>
> Transmitting at these rates over 1Gig Ethernet would not be possible, so =
I
> generate them using an RFNoC block inside the FPGA.
>
> Adri=C3=A0
> El 6/25/2019 a las 3:22 PM, Jonas Manthey escribi=C3=B3:
>
> Hi,
>
>
>
> I cannot answer your question, but out of curiosity: why do you use a
> RFNoC? Seems like overkill to me.
>
>
>
> Cheers,
>
> Jonas
>
>
>
> *From:* USRP-users [mailto:usrp-users-bounces@lists.ettus.com
> <usrp-users-bounces@lists.ettus.com>] *On Behalf Of *Adria via USRP-users
> *Sent:* Dienstag, 25. Juni 2019 15:07
> *To:* usrp-users@lists.ettus.com
> *Subject:* [USRP-users] Samples do not get through RFNoC stream splitter
>
>
>
> Dear all,
>
> I am working on an application where I need to transmit a frequency ramp
> through two UBX-160 using different carrier frequencies.
>
> I use a split_stream RFNoC block to copy the samples of a ramp generator
> like this:
>
> [Ramp Generator] ---> [Split Stream] --> Radio 0
>
>                                                                    '->
> Radio 1
>
> However, I see no activity on the radio outputs. If I replace the splitte=
r
> with, for instance, a DigitalGain block or I remove it, data is transmitt=
ed
> correctly through any of the two daughterboards.
>
> Here is how I connect the blocks:
>
>
>
>
>
> *  //Connect DDS sweeper to splitter
> graph->connect(dds_src_ctrl->get_block_id(), splitter_id);   //Connect
> splitter to radios   graph->connect(splitter_id, 0, radio_ctrl_id_b, 0);
> graph->connect(splitter_id, 1, radio_ctrl_id_a, 0);*
>
> Any help would be appreciated, thanks!
>
>
>
> [image: Image removed by sender.]
> <https://www.avast.com/sig-email?utm_medium=3Demail&utm_source=3Dlink&utm=
_campaign=3Dsig-email&utm_content=3Demailclient&utm_term=3Dicon>
>
> Virus-free. www.avast.com
> <https://www.avast.com/sig-email?utm_medium=3Demail&utm_source=3Dlink&utm=
_campaign=3Dsig-email&utm_content=3Demailclient&utm_term=3Dlink>
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000008114cd058c290bc5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Yeah, that&#39;s the problem. The current RFNoC archi=
tecture doesn&#39;t allow for two full-rate outputs from a single block, be=
cause the two outputs share the same port on the crossbar.</div><div><br></=
div><div>The best solution is to write a custom splitter block which instan=
tiates two noc_shells, and wire them both to the crossbar in rfnoc_ce_auto_=
inst_x310.v. If you get stuck doing this I can dig up some example code.</d=
iv><div><br></div><div>Nick<br></div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jun 25, 2019 at 6:50 AM Adri=
=C3=A0 Am=C3=A9zaga via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.e=
ttus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <p>Hi Jonas, <br>
    </p>
    <p>I use the full sampling rate for the TX sweeps since most of the
      instantaneous bandwidth of the UBX is used.</p>
    <p>Transmitting at these rates over 1Gig Ethernet would not be
      possible, so I generate them using an RFNoC block inside the FPGA.</p=
>
    <p>Adri=C3=A0</p>
    <div class=3D"gmail-m_1727830280448490074moz-cite-prefix">El 6/25/2019 =
a las 3:22 PM, Jonas
      Manthey escribi=C3=B3:<br>
    </div>
    <blockquote type=3D"cite">
     =20
     =20
     =20
     =20
      <div class=3D"gmail-m_1727830280448490074WordSection1">
        <p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&q=
uot;Calibri&quot;,sans-serif;color:rgb(31,73,125)">Hi,<u></u><u></u></span>=
</p>
        <p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&q=
uot;Calibri&quot;,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></sp=
an></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&q=
uot;Calibri&quot;,sans-serif;color:rgb(31,73,125)">I
            cannot answer your question, but out of curiosity: why do
            you use a RFNoC? Seems like overkill to me.<u></u><u></u></span=
></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&q=
uot;Calibri&quot;,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></sp=
an></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&q=
uot;Calibri&quot;,sans-serif;color:rgb(31,73,125)">Cheers,<u></u><u></u></s=
pan></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&q=
uot;Calibri&quot;,sans-serif;color:rgb(31,73,125)">Jonas<u></u><u></u></spa=
n></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&q=
uot;Calibri&quot;,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></sp=
an></p>
        <div>
          <div style=3D"border-color:rgb(225,225,225) currentcolor currentc=
olor;border-style:solid none none;border-width:1pt medium medium;padding:3p=
t 0cm 0cm">
            <p class=3D"MsoNormal"><b><span style=3D"font-size:11pt;font-fa=
mily:&quot;Calibri&quot;,sans-serif;color:windowtext" lang=3D"EN-US">From:<=
/span></b><span style=3D"font-size:11pt;font-family:&quot;Calibri&quot;,san=
s-serif;color:windowtext" lang=3D"EN-US"> USRP-users
                [<a class=3D"gmail-m_1727830280448490074moz-txt-link-freete=
xt" href=3D"mailto:usrp-users-bounces@lists.ettus.com" target=3D"_blank">ma=
ilto:usrp-users-bounces@lists.ettus.com</a>]
                <b>On Behalf Of </b>Adria via USRP-users<br>
                <b>Sent:</b> Dienstag, 25. Juni 2019 15:07<br>
                <b>To:</b> <a class=3D"gmail-m_1727830280448490074moz-txt-l=
ink-abbreviated" href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blan=
k">usrp-users@lists.ettus.com</a><br>
                <b>Subject:</b> [USRP-users] Samples do not get through
                RFNoC stream splitter<u></u><u></u></span></p>
          </div>
        </div>
        <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
        <p>Dear all,<u></u><u></u></p>
        <p>I am working on an application where I need to transmit a
          frequency ramp through two UBX-160 using different carrier
          frequencies.<u></u><u></u></p>
        <p>I use a split_stream RFNoC block to copy the samples of a
          ramp generator like this:<u></u><u></u></p>
        <p>[Ramp Generator] ---&gt; [Split Stream] --&gt; Radio 0<u></u><u>=
</u></p>
        <p>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
          &#39;-&gt; Radio 1<u></u><u></u></p>
        <p>However, I see no activity on the radio outputs. If I replace
          the splitter with, for instance, a DigitalGain block or I
          remove it, data is transmitted correctly through any of the
          two daughterboards.<u></u><u></u></p>
        <p>Here is how I connect the blocks:<u></u><u></u></p>
        <p><i><span style=3D"font-size:10pt">=C2=A0 //Connect DDS sweeper t=
o
              splitter<br>
              =C2=A0 graph-&gt;connect(dds_src_ctrl-&gt;get_block_id(),
              splitter_id);<br>
              =C2=A0 //Connect splitter to radios<br>
              =C2=A0 graph-&gt;connect(splitter_id, 0, radio_ctrl_id_b, 0);=
<br>
              =C2=A0 graph-&gt;connect(splitter_id, 1, radio_ctrl_id_a, 0);=
</span></i><u></u><u></u></p>
        <p>Any help would be appreciated, thanks!<u></u><u></u></p>
        <div id=3D"gmail-m_1727830280448490074DAB4FAD8-2DD7-40BB-A1B8-4E2AA=
1F9FDF2">
          <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
          <table class=3D"gmail-m_1727830280448490074MsoNormalTable" style=
=3D"border-color:rgb(211,212,222) currentcolor currentcolor;border-style:so=
lid none none;border-width:1pt medium medium" cellpadding=3D"0" border=3D"1=
">
            <tbody>
              <tr>
                <td style=3D"width:41.25pt;border:medium none;padding:9.75p=
t 0.75pt 0.75pt" width=3D"58">
                  <p class=3D"MsoNormal"><a href=3D"https://www.avast.com/s=
ig-email?utm_medium=3Demail&amp;utm_source=3Dlink&amp;utm_campaign=3Dsig-em=
ail&amp;utm_content=3Demailclient&amp;utm_term=3Dicon" target=3D"_blank"><s=
pan style=3D"border:1pt solid windowtext;padding:0cm;text-decoration:none">=
<img id=3D"gmail-m_1727830280448490074_x0000_i1025" src=3D"cid:16b8f9c0e254=
ce8e91" alt=3D"Image removed by sender." width=3D"46" height=3D"29" border=
=3D"0"></span></a><u></u><u></u></p>
                </td>
                <td style=3D"width:352.5pt;border:medium none;padding:9pt 0=
.75pt 0.75pt" width=3D"473">
                  <p class=3D"MsoNormal" style=3D"line-height:13.5pt"><span=
 style=3D"font-size:10pt;font-family:&quot;Arial&quot;,sans-serif;color:rgb=
(65,66,78)">Virus-free.
                      <a href=3D"https://www.avast.com/sig-email?utm_medium=
=3Demail&amp;utm_source=3Dlink&amp;utm_campaign=3Dsig-email&amp;utm_content=
=3Demailclient&amp;utm_term=3Dlink" target=3D"_blank">
                        <span style=3D"color:rgb(68,83,234)">www.avast.com<=
/span></a>
                      <u></u><u></u></span></p>
                </td>
              </tr>
            </tbody>
          </table>
          <p class=3D"MsoNormal"><span style=3D"color:windowtext"><u></u>=
=C2=A0<u></u></span></p>
        </div>
      </div>
    </blockquote>
  </div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000008114cd058c290bc5--
--0000000000008114ce058c290bc6
Content-Type: image/jpeg; name="image001.jpg"
Content-Disposition: inline; filename="image001.jpg"
Content-Transfer-Encoding: base64
Content-ID: <16b8f9c0e254ce8e91>
X-Attachment-Id: 16b8f9c0e254ce8e91

/9j/4AAQSkZJRgABAQEAYABgAAD/2wBDAAoHBwgHBgoICAgLCgoLDhgQDg0NDh0VFhEYIx8lJCIf
IiEmKzcvJik0KSEiMEExNDk7Pj4+JS5ESUM8SDc9Pjv/wAALCAAdAC4BAREA/8QAHwAAAQUBAQEB
AQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQAAAF9AQIDAAQRBRIhMUEGE1Fh
ByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3ODk6Q0RFRkdISUpTVFVWV1hZ
WmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXG
x8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/9oACAEBAAA/APZqKKKKKKKKKKKKKKKK
KKKKKKK//9k=
--0000000000008114ce058c290bc6--


--===============8907752772556567541==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8907752772556567541==--

