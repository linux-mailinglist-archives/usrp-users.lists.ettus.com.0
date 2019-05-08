Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9694D17F0B
	for <lists+usrp-users@lfdr.de>; Wed,  8 May 2019 19:25:47 +0200 (CEST)
Received: from [::1] (port=45670 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hOQK8-0005au-H0; Wed, 08 May 2019 13:25:44 -0400
Received: from mail-lj1-f176.google.com ([209.85.208.176]:41884)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <robin.coxe@ettus.com>)
 id 1hOQJZ-0005QH-I2
 for usrp-users@lists.ettus.com; Wed, 08 May 2019 13:25:39 -0400
Received: by mail-lj1-f176.google.com with SMTP id k8so18169875lja.8
 for <usrp-users@lists.ettus.com>; Wed, 08 May 2019 10:24:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4mR8FtY5MSem1aveG7nWlXSOkek8GhmldNG9Jpy9Mq4=;
 b=vAM/Dyum0Hlk6yUUFOJEn7+IT5eUmNOWWLxhTxpgjSjVMgfF3RfpNvEh/EF9iLL4XE
 GCHbZg4VZtutGDJuFRh1eczH8QMLGqdMEfm5NdXgrW1/E4TeLZy+8xv5E7f7gforZm4l
 Rv/LeAqFbK3htAAF0g9i/w9W4Zd5DeOEtmzbIHx8UabFE1zB2rKFbn6SPcrb73GRERvG
 v80Q0o3YZdN80414XqbmTDRaInZtSLC0OJICEJ/uFGCNbHOp0EuJPQAv1A4Y910O4Ftm
 G1E6Ecl7P+0OpDdvFXvCvGgB/qlZbDResTEWgGp7Dy0OnxcTt2WktQTk4DTY/OeCWlt7
 dlJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4mR8FtY5MSem1aveG7nWlXSOkek8GhmldNG9Jpy9Mq4=;
 b=W5tzpUXnlOC6JGKlY1T63RXIb4HreeE4+xcA4TLfzQzVV4y7ZrIcHjbGXyYwypfAk5
 BqjDd/cOa3cDeUo2EKme/QdSHEwYq19wxOJ/cnE3raFEhfKR2/Ffo/gQWtaTmHtJVDed
 wCHQJbuIPxYZ6f1di5HcYSKW6pMADgnbucnuByErTdsnRku6MQAq3ehVJPMmk8pxUIqm
 5U7+5aaxUcvHC02RApAmd5HEHaHb9ilWg7BVT2Q72FHAPjxZerFprOy7bLzpjklY3IGA
 HW8LN8X1gcLaWgJ7icKzA7HCQX3wQV7NSFYRnsWAQNUdwAJ89xgvLmkRIEk2CNfZdaJo
 yhHQ==
X-Gm-Message-State: APjAAAXTekFGR9ttkCV93dw6VeDX0xrUcKCH6S1pG7T7BquRA/oB25NB
 AfeiIcOJVd/xLHOgNEwfhldYRHMQJkeO40ikWvzezgKn
X-Google-Smtp-Source: APXvYqyeGcKmZHkr7fP6b6PXjRkBUVrRLGwawfHxm+M06TIwDjksCX95Rf/GZuLjtPF3K7ycnnSQnEvumHdVXasfyu4=
X-Received: by 2002:a2e:4743:: with SMTP id u64mr9725371lja.57.1557336268040; 
 Wed, 08 May 2019 10:24:28 -0700 (PDT)
MIME-Version: 1.0
References: <556BBE2D-2BA6-40A3-BFF5-F5FA2351DB06@k5so.com>
 <BL0PR12MB2340E831A1782ED0958D6DBAAF320@BL0PR12MB2340.namprd12.prod.outlook.com>
 <84C6BD1A-2901-4FFC-834C-55B481EB7045@k5so.com> <5CD30B61.8080700@gmail.com>
In-Reply-To: <5CD30B61.8080700@gmail.com>
Date: Wed, 8 May 2019 10:24:15 -0700
Message-ID: <CAGVTi8UrRix7wt_BxCN8rNBvFGD8d4Uz8Td7hWHGpg+G_=quAw@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] Bringing an elderly N210 to life by loading
 current firmware/fpga images
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
From: Robin Coxe via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Robin Coxe <robin.coxe@ettus.com>
Cc: USRP-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3183959721374023148=="
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

--===============3183959721374023148==
Content-Type: multipart/alternative; boundary="0000000000000d7f720588639bdb"

--0000000000000d7f720588639bdb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Joe and Jason.  So, I took a walk down Memory Lane and discovered that
the N210 was first released by Ettus Research in November 2010, which was
about 6 months after we were acquired by National Instruments.
It is a true statement that v2 of the hardware is quite geriatric and no
longer supported in modern versions of UHD.   However, all hope is not lost=
.

There *is* support for N200/N210 in the oldest version of UHD that is still
downloadable on files.ettus.com, UHD v.3.8.0.0.   The FPGA images are in
this zip file:
http://files.ettus.com/binaries/images/uhd-images_003.008.000-18-g6647f8cc.=
zip

We unfortunately don't have a v2 in the office to confirm that it still
works, but you might want to take a look.

-Robin



On Wed, May 8, 2019 at 10:02 AM Marcus D. Leech via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On 05/08/2019 12:56 PM, Joe Martin via USRP-users wrote:
>
> Wow, okay; that=E2=80=99s disheartening.  Thanks much for the info, Jason=
.  Nope,
> the Rev3 bit file doesn=E2=80=99t work; tried it.  I=E2=80=99ll see if th=
e support email
> adr can be of use.
>
> Joe
>
> There was a hardware change, as I recall, between Rev2 and Rev3 involving
> the inputs to the ADCs.
>
>
> On May 8, 2019, at 10:44 AM, Jason Matusiak <jason@gardettoengineering.co=
m>
> wrote:
>
> Joe, I think you might be SOL.  If you take a look at this thread from me
> last year, I had no luck:
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-April/05=
6223.html
>
>
> Also, when I pinged Ettus directly, here is some info I got back from the=
m
> (from two different emails in the thread):
> "we've been having some trouble tracking down Rev2 bitfiles, because no
> one here was around when that was built. If you're trying to unbrick
> them, Rev3 bitfiles might be OK, but I'm not completely sure.
>
> support@ettus.com might know more by know.
> really sorry, but those Rev2s are just so old. And all the people from
> that era seem to be gone. Sorry, can't help you with those Rev2s."
>
> ------------------------------
> *From:* USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Joe
> Martin via USRP-users <usrp-users@lists.ettus.com>
> *Sent:* Wednesday, May 8, 2019 11:55 AM
> *To:* Joe Martin via USRP-users
> *Subject:* [USRP-users] Bringing an elderly N210 to life by loading
> current firmware/fpga images
>
> I am trying to bring an elderly N210 r2.0 with unknown history to life by
> loading current UHD firmware and fpga images from a 1Gigabit ethernet
> connection on an AMD 2950X, 3.4GHz, 2TB SSD PC running Ubuntu 18.04 with
> UHD 3.14.0.HEAD-0-gd20a7ae2 software but having difficulty.
>
> Following instructions in =E2=80=9CUSRP Hardware Driver and USRP Manual: =
USRP2 and
> N2x0 Series=E2=80=9D:
>
> My initial action was to load the =E2=80=9Cusrp_n210_r4_fpga.bit" file in=
to the
> N210 xc3sd3400a FPGA using a Xilinx Platform Cable USB II JTAG programmin=
g
> cable from a Win7 PC running Xilinx ISE iMPACT, which reported =E2=80=9CP=
rogram
> Succeeded=E2=80=9D for the action.  Ethernet LEDs on the N210 are various=
ly lighted
> showing activity on the connection port.
>
> With the N210 connected to the Linux PC 1Gbps ethernet port, issuing the
> following commands result in the responses shown in the screenshot image
> below:
>
> <Screenshot from 2019-05-08 08-46-52.png>
>
> My (naive!) interpretation of the above responses is that the FPGA may no=
t
> actually have been programmed with the *.bit code even though iMPACT
> reported success in programming.  Can someone assist me in understanding
> whether my interpretation is correct or not and, most importantly, sugges=
t
> what I might try next to bring this N210 to life?
>
> The =E2=80=9CPlease run:=E2=80=9D suggestion results in the =E2=80=9CRece=
ived invalid reply 32
> from device=E2=80=9D error.  It seems no matter what I try the =E2=80=9CR=
eceived invalid
> reply 32 from device=E2=80=9D RuntimeError is reported back when I try to=
 load any
> new firmware/FPGA images.
>
> Thanks!
>
> Joe
>
>
>
>
> _______________________________________________
> USRP-users mailing listUSRP-users@lists.ettus.comhttp://lists.ettus.com/m=
ailman/listinfo/usrp-users_lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000000d7f720588639bdb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Hi Joe and Jason.=C2=A0 =
So, I took a walk down Memory Lane and discovered that the N210 was first r=
eleased by Ettus Research in November 2010, which was about 6 months after =
we were acquired by National Instruments.<div>It is a true statement that v=
2 of the hardware is quite geriatric and no longer supported in modern vers=
ions of UHD.=C2=A0 =C2=A0However, all hope is not lost.</div><div><br></div=
><div>There *is* support for N200/N210 in the oldest version of UHD that is=
 still downloadable on <a href=3D"http://files.ettus.com">files.ettus.com</=
a>, UHD v.3.8.0.0.=C2=A0 =C2=A0The FPGA images are in this zip file:</div><=
div><a href=3D"http://files.ettus.com/binaries/images/uhd-images_003.008.00=
0-18-g6647f8cc.zip">http://files.ettus.com/binaries/images/uhd-images_003.0=
08.000-18-g6647f8cc.zip</a><br></div><div><br></div><div>We unfortunately d=
on&#39;t have a v2 in the office to confirm that it still works, but you mi=
ght want to take a look.=C2=A0=C2=A0</div><div><br></div><div>-Robin</div><=
div><br></div><div><br></div></div></div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Wed, May 8, 2019 at 10:02 AM Marcus D=
. Leech via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">us=
rp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div class=3D"gmail-m_-1639864966745732941moz-cite-prefix">On 05/08/201=
9 12:56 PM, Joe Martin via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      Wow, okay; that=E2=80=99s disheartening.=C2=A0 Thanks much for the in=
fo, Jason.
      =C2=A0Nope, the Rev3 bit file doesn=E2=80=99t work; tried it.=C2=A0 I=
=E2=80=99ll see if the
      support email adr can be of use. =C2=A0
      <div><br>
      </div>
      <div>Joe<br>
        <div><br>
        </div>
      </div>
    </blockquote>
    There was a hardware change, as I recall, between Rev2 and Rev3
    involving the inputs to the ADCs.<br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div>
        <div>
          <blockquote type=3D"cite">
            <div>On May 8, 2019, at 10:44 AM, Jason Matusiak
              &lt;<a href=3D"mailto:jason@gardettoengineering.com" target=
=3D"_blank">jason@gardettoengineering.com</a>&gt;
              wrote:</div>
            <br class=3D"gmail-m_-1639864966745732941Apple-interchange-newl=
ine">
            <div>
              <div style=3D"font-style:normal;font-variant-caps:normal;font=
-weight:normal;letter-spacing:normal;text-align:start;text-indent:0px;text-=
transform:none;white-space:normal;word-spacing:0px;text-decoration:none;fon=
t-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt">Joe, I
                think you might be SOL.=C2=A0 If you take a look at this
                thread from me last year, I had no luck:=C2=A0<a href=3D"ht=
tp://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2018-April/056223=
.html" target=3D"_blank">http://lists.ettus.com/pipermail/usrp-users_lists.=
ettus.com/2018-April/056223.html</a></div>
              <div style=3D"font-style:normal;font-variant-caps:normal;font=
-weight:normal;letter-spacing:normal;text-align:start;text-indent:0px;text-=
transform:none;white-space:normal;word-spacing:0px;text-decoration:none;fon=
t-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt"><br>
              </div>
              <div style=3D"font-style:normal;font-variant-caps:normal;font=
-weight:normal;letter-spacing:normal;text-align:start;text-indent:0px;text-=
transform:none;white-space:normal;word-spacing:0px;text-decoration:none;fon=
t-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt"><br>
              </div>
              <div style=3D"font-style:normal;font-variant-caps:normal;font=
-weight:normal;letter-spacing:normal;text-align:start;text-indent:0px;text-=
transform:none;white-space:normal;word-spacing:0px;text-decoration:none;fon=
t-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt">Also,
                when I pinged Ettus directly, here is some info I got
                back from them (from two different emails in the
                thread):</div>
              <div style=3D"font-style:normal;font-variant-caps:normal;font=
-weight:normal;letter-spacing:normal;text-align:start;text-indent:0px;text-=
transform:none;white-space:normal;word-spacing:0px;text-decoration:none;fon=
t-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt">&quot;<span>we&=
#39;ve been having some trouble
                  tracking down Rev2 bitfiles, because no</span><br>
                <span>one here was around when that
                  was built. If you&#39;re trying to unbrick</span><br>
                <span>them, Rev3 bitfiles might be OK,
                  but I&#39;m not completely sure.</span></div>
              <div style=3D"font-style:normal;font-variant-caps:normal;font=
-weight:normal;letter-spacing:normal;text-align:start;text-indent:0px;text-=
transform:none;white-space:normal;word-spacing:0px;text-decoration:none;fon=
t-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt"><br>
                <span><a href=3D"mailto:support@ettus.com" target=3D"_blank=
">support@ettus.com</a><span class=3D"gmail-m_-1639864966745732941Apple-con=
verted-space">=C2=A0</span>might know
                  more by know.</span></div>
              <div style=3D"font-style:normal;font-variant-caps:normal;font=
-weight:normal;letter-spacing:normal;text-align:start;text-indent:0px;text-=
transform:none;white-space:normal;word-spacing:0px;text-decoration:none;fon=
t-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt"><span>really so=
rry, but those Rev2s
                  are just so old. And all the people from</span><br>
                <span>that era seem to be gone. Sorry,
                  can&#39;t help you with those Rev2s.&quot;</span></div>
              <div id=3D"gmail-m_-1639864966745732941Signature" style=3D"fo=
nt-family:Helvetica;font-size:12px;font-style:normal;font-variant-caps:norm=
al;font-weight:normal;letter-spacing:normal;text-align:start;text-indent:0p=
x;text-transform:none;white-space:normal;word-spacing:0px;text-decoration:n=
one">
                <div>
                  <div style=3D"font-family:Calibri,Arial,Helvetica,sans-se=
rif;font-size:12pt"><br>
                  </div>
                  <hr style=3D"display:inline-block;width:1284.77px">
                  <div id=3D"gmail-m_-1639864966745732941divRplyFwdMsg" dir=
=3D"ltr"><font style=3D"font-size:11pt" face=3D"Calibri,
                      sans-serif"><b>From:</b><span class=3D"gmail-m_-16398=
64966745732941Apple-converted-space">=C2=A0</span>USRP-users
                      &lt;<a href=3D"mailto:usrp-users-bounces@lists.ettus.=
com" target=3D"_blank">usrp-users-bounces@lists.ettus.com</a>&gt;
                      on behalf of Joe Martin via USRP-users &lt;<a href=3D=
"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettu=
s.com</a>&gt;<br>
                      <b>Sent:</b><span class=3D"gmail-m_-16398649667457329=
41Apple-converted-space">=C2=A0</span>Wednesday,
                      May 8, 2019 11:55 AM<br>
                      <b>To:</b><span class=3D"gmail-m_-1639864966745732941=
Apple-converted-space">=C2=A0</span>Joe Martin
                      via USRP-users<br>
                      <b>Subject:</b><span class=3D"gmail-m_-16398649667457=
32941Apple-converted-space">=C2=A0</span>[USRP-users]
                      Bringing an elderly N210 to life by loading
                      current firmware/fpga images</font>
                    <div>=C2=A0</div>
                  </div>
                  <div style=3D"overflow-wrap: break-word;">I am trying to =
bring
                    an elderly N210 r2.0 with unknown history to life by
                    loading current UHD firmware and fpga images from a
                    1Gigabit ethernet connection on an AMD 2950X,
                    3.4GHz, 2TB SSD PC running Ubuntu 18.04 with UHD
                    3.14.0.HEAD-0-gd20a7ae2 software but having
                    difficulty.=C2=A0
                    <div><br>
                    </div>
                    <div>Following instructions in =E2=80=9CUSRP
                      Hardware Driver and USRP Manual: USRP2 and N2x0
                      Series=E2=80=9D:</div>
                    <div><br>
                    </div>
                    <div>My initial action was to load the
                      =E2=80=9Cusrp_n210_r4_fpga.bit&quot; file into the N2=
10
                      xc3sd3400a FPGA using a Xilinx Platform Cable USB
                      II JTAG programming cable from a Win7 PC running
                      Xilinx ISE iMPACT, which reported =E2=80=9CProgram
                      Succeeded=E2=80=9D for the action.=C2=A0 Ethernet LED=
s on the
                      N210 are variously lighted showing activity on the
                      connection port.</div>
                    <div><br>
                    </div>
                    <div>With the N210 connected to the Linux
                      PC 1Gbps ethernet port, issuing the following
                      commands result in the responses shown in the
                      screenshot image below:=C2=A0</div>
                    <div><br>
                    </div>
                    <div><span id=3D"gmail-m_-1639864966745732941cid:70A3E5=
A1-EF1B-4D99-B156-F8CD7369666A">&lt;Screenshot
                        from 2019-05-08 08-46-52.png&gt;</span></div>
                    <div><br>
                    </div>
                    <div>
                      <div>My (naive!) interpretation of the
                        above responses is that the FPGA may not
                        actually have been programmed with the *.bit
                        code even though iMPACT reported success in
                        programming.=C2=A0 Can someone assist me in
                        understanding whether my interpretation is
                        correct or not and, most importantly, suggest
                        what I might try next to bring this N210 to
                        life? =C2=A0</div>
                      <div><br>
                      </div>
                      <div>The =E2=80=9CPlease run:=E2=80=9D suggestion res=
ults
                        in the =E2=80=9CReceived invalid reply 32 from devi=
ce=E2=80=9D
                        error.=C2=A0 It seems no matter what I try the
                        =E2=80=9CReceived invalid reply 32 from device=E2=
=80=9D
                        RuntimeError is reported back when I try to load
                        any new firmware/FPGA images. =C2=A0</div>
                      <div><br>
                      </div>
                      <div>Thanks!</div>
                      <div><br>
                      </div>
                      <div>Joe</div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </blockquote>
        </div>
        <br>
      </div>
      <br>
      <fieldset class=3D"gmail-m_-1639864966745732941mimeAttachmentHeader">=
</fieldset>
      <br>
      <pre>_______________________________________________
USRP-users mailing list
<a class=3D"gmail-m_-1639864966745732941moz-txt-link-abbreviated" href=3D"m=
ailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.=
com</a>
<a class=3D"gmail-m_-1639864966745732941moz-txt-link-freetext" href=3D"http=
://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" target=3D"_=
blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</=
a>
</pre>
    </blockquote>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>

--0000000000000d7f720588639bdb--


--===============3183959721374023148==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3183959721374023148==--

