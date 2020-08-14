Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1152B24501F
	for <lists+usrp-users@lfdr.de>; Sat, 15 Aug 2020 01:24:04 +0200 (CEST)
Received: from [::1] (port=57604 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k6j3H-0008FY-U6; Fri, 14 Aug 2020 19:23:59 -0400
Received: from mail-yb1-f169.google.com ([209.85.219.169]:43825)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <cherif.chibane@gmail.com>)
 id 1k6j3E-0008Ao-8j
 for usrp-users@lists.ettus.com; Fri, 14 Aug 2020 19:23:56 -0400
Received: by mail-yb1-f169.google.com with SMTP id m200so6039272ybf.10
 for <usrp-users@lists.ettus.com>; Fri, 14 Aug 2020 16:23:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=v0NoUPjXPxAJiAlaUmEkGZMLlk53CFZ/t0UM046oWJU=;
 b=kqT++H8Y97dKQoBvy/SncfeHCKjtBOqLLnuFbfEN6lunO493BtqkGz7jU+RhGs/uNr
 ChRevRrL1kBfOjtVlMS7VrIThr8TJSfpr6OKvj3oSmF47TJb4jxg7VUsfAo4uvbF5MWy
 FWSCaI8aikLHDcHfrjh9q1577CQpdd+oIbnBNIhCEuAQlZ3SPiZO/K1IWLlF0+K5rbZl
 T2lQlANPEH0aNFXnq+X7GYUYGAa8tV8rC8y4fVDM6B9jUMK4v74kGHGdYdytaHh95rJm
 BJ7Msje9IR0c5d7ZBfGg6TIO4MZ2XjL+IDJeeEV6RCGMgZYKp3G2KE2BRm6LAn3WNUvk
 O1lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=v0NoUPjXPxAJiAlaUmEkGZMLlk53CFZ/t0UM046oWJU=;
 b=a4D4mCcYZK4kB2xJ4jqMn1K8RVuKH0kpmEBQ4brWvESEKt9N90u7iJd0eXdNITme7j
 Qnok25TAQLMoyyLiv062Ds+2x99cKp02GWFnlh4NIRnUUDH3W21hHEUgg+UDJJwp5064
 Kb/j08SsO705wylVYkShhrEoiMAd/IbSZAovvQJOj8/tan1KO8XtTZNWY5zlYYk0UQDC
 LJxS+rDCm33LvWK4I6qaHB2i9rt2BTtFwdC+i3jQAgcpO/rbaVsim/q+My2HK067fIqr
 cM6+uPOEQUC5tI9+jRD4tqDudMI1Y0oftUeIfT++VMEYgBadpgNiLDLVLZaoYefE9QTr
 6Gsg==
X-Gm-Message-State: AOAM530ZVpHa/P+N9DSSjo3fBrWWCD8hxk19LlGHF/wLydnabTHKM/pD
 TpY8Y62gFJV81dfqO9OkDQJAhix1BAHJTRI30d0=
X-Google-Smtp-Source: ABdhPJyoRE0PVVE1/sqjPmj41XMpdmoilupgdk1iWk1bQYdgI7j25LI1pSAbM6I7iVVkdE2NVVDDixwKmAh+V4Xnknw=
X-Received: by 2002:a25:680e:: with SMTP id d14mr6748494ybc.15.1597447395530; 
 Fri, 14 Aug 2020 16:23:15 -0700 (PDT)
MIME-Version: 1.0
References: <CAN6+RzmEiJ0ouDEW+bBw55KZRrF2n21O6YdbXJzEYHOP8aU4HA@mail.gmail.com>
 <5F370E35.40200@gmail.com>
 <CAN6+RzmxLLKfYXF9cc26k+P017Li8X7WLxYknNk8PSD4iQJXng@mail.gmail.com>
 <5F3710AA.4030503@gmail.com>
 <CAN6+Rzn0w_cWYfVoY7gTVYe7MajUJbUrYq7POHjsjMgSEjSQDA@mail.gmail.com>
 <5F37151B.4010500@gmail.com>
In-Reply-To: <5F37151B.4010500@gmail.com>
Date: Fri, 14 Aug 2020 19:23:04 -0400
Message-ID: <CAN6+RzmoCdi7hLXiSk1=zKJu0X9az=SNXZhwj0ma-6hf_mJ8Bg@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] usrp_x310_fpga_RFNOC_HG.bit
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: cherif chibane via USRP-users <usrp-users@lists.ettus.com>
Reply-To: cherif chibane <cherif.chibane@gmail.com>
Content-Type: multipart/mixed; boundary="===============7527557983844737324=="
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

--===============7527557983844737324==
Content-Type: multipart/alternative; boundary="0000000000008edd9f05acdeb436"

--0000000000008edd9f05acdeb436
Content-Type: text/plain; charset="UTF-8"

Sorry Marcus for the confusion and here is the story.

I have the development tool and did create my own RFNoC module, loaded it
an ran it. I have been using only UHD and using C++. So I am Ok there.

I just installed GNU radio and gr-Ettus and wanted to try Phosphor with
gmutadio-companion. But it requires that I load  the image that the user
manual says is called
usurp_x300_rfnoc. This image has already the blocks that are required by
the phosphor Gnu radio-companion graph.

I used the image_downloader but that image did not come with the download

And of course I have a Xinlix license issue and I can not generate it here
until I resolve the license issue.

That is why I asked if it is somewhere where I can download it.

Sorry for the confusion. And if it is not available that is ok I will
generate it when the license is resolved.

Thanks
Cherif



Fri, Aug 14, 2020 at 6:50 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 08/14/2020 06:33 PM, cherif chibane wrote:
>
> Hi Marcus,
>
> Is there a copy of it somewhere that I can use, or do I need to recreate
> it? I have issues with Xilinx license for now.
> ____________
> Cherif Chibane
>
> So, I misspoke.
>
> According to this document here, in order to get the special "RFNOC
> development" images, you'll need to actually have the RFNOC
>   development environment set-up.  Looks like you don't have the RFNOC
> version of UHD, so none of the extra FPGA images are being downloaded.
>
> https://kb.ettus.com/Getting_Started_with_RFNoC_Development
>
>
>
>
>
> On Fri, Aug 14, 2020 at 6:31 PM Marcus D. Leech <patchvonbraun@gmail.com>
> wrote:
>
>> On 08/14/2020 06:29 PM, cherif chibane wrote:
>>
>> Hi Marcus,
>>
>> I am running UHD-3.15.LTS
>> ____________
>> Cherif Chibane
>>
>> The RFNOC image is the standard image now (even if you aren't using RFNOC
>> at the UHD API level, the machinery in the X310 FPGA is
>>   based on RFNOC).
>>
>> So, you probably want:
>>
>> usrp_x310_fpga_XG.bit
>>
>>
>> On Fri, Aug 14, 2020 at 6:21 PM Marcus D. Leech via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> On 08/14/2020 04:06 PM, cherif chibane via USRP-users wrote:
>>>
>>> Hello,
>>>
>>> I would like to use teh X300 bit file:   usrp_x310_fpga_RFNOC_XG.bit.
>>> Does it exist somewhere or do I need to re-create it? I used  uhd_images_downloader
>>> to download the bitfiles but it did not come with the files downloaded.
>>>
>>> Thanks,
>>>
>>> Cherif
>>>
>>>
>>>
>>> Does it exist somewhere or do I need to re-create it. I used  uhd_images_downloader
>>> but it did not come with the files downloaded.
>>>
>>> Thanks,
>>>
>>> Cherif
>>>
>>>
>>> What version of UHD are you running?  I think the naming convention for
>>> the standard "factory" BIT files changed quite a while ago.
>>>
>>>
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>
>>
> --
____________
Cherif Chibane

--0000000000008edd9f05acdeb436
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div dir=3D"auto">Sorry Marcus for the confusion and here is the story=
.</div></div><div dir=3D"auto"><br></div><div dir=3D"auto">I have the devel=
opment tool and did create my own RFNoC module, loaded it an ran it. I have=
 been using only UHD and using C++. So I am Ok there.</div><div dir=3D"auto=
"><br></div><div dir=3D"auto">I just installed GNU radio and gr-Ettus and w=
anted to try Phosphor with gmutadio-companion. But it requires that I load =
=C2=A0the image that the user manual says is called</div><div dir=3D"auto">=
usurp_x300_rfnoc. This image has already the blocks that are required by th=
e phosphor Gnu radio-companion graph.</div><div dir=3D"auto"><br></div><div=
 dir=3D"auto">I used the image_downloader but that image did not come with =
the download</div><div dir=3D"auto"><br></div><div dir=3D"auto">And of cour=
se I have a Xinlix license issue and I can not generate it here until I res=
olve the license issue.</div><div dir=3D"auto"><br></div><div dir=3D"auto">=
That is why I asked if it is somewhere where I can download it.</div><div d=
ir=3D"auto"><br></div><div dir=3D"auto">Sorry=C2=A0for the confusion. And i=
f it is not available that is ok I will generate it when the license is res=
olved.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Thanks</div><div =
dir=3D"auto">Cherif</div><div dir=3D"auto"><br></div><div dir=3D"auto"><br>=
</div><div dir=3D"auto"><br></div><div dir=3D"auto">Fri, Aug 14, 2020 at 6:=
50 PM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchv=
onbraun@gmail.com</a>&gt; wrote:</div><div><div class=3D"gmail_quote"><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #cc=
c solid;padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div>On 08/14/2020 06:33 PM, cherif chibane
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div>Hi Marcus,</div>
        <div><br>
        </div>
        <div>Is there a copy of it somewhere that I can use, or do I
          need to recreate it? I have issues with Xilinx license for
          now.<br>
        </div>
        <div>
          <div>
            <div dir=3D"ltr" data-smartmail=3D"gmail_signature">
              <div dir=3D"ltr">
                <div>____________</div>
                Cherif Chibane</div>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    So, I misspoke.<br>
    <br>
    According to this document here, in order to get the special &quot;RFNO=
C
    development&quot; images, you&#39;ll need to actually have the RFNOC<br=
>
    =C2=A0 development environment set-up.=C2=A0 Looks like you don&#39;t h=
ave the
    RFNOC version of UHD, so none of the extra FPGA images are being
    downloaded.<br>
    <br>
    <a href=3D"https://kb.ettus.com/Getting_Started_with_RFNoC_Development"=
 target=3D"_blank">https://kb.ettus.com/Getting_Started_with_RFNoC_Developm=
ent</a><br>
    <br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div><br>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Fri, Aug 14, 2020 at 6:31
          PM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com"=
 target=3D"_blank">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div bgcolor=3D"#FFFFFF">
            <div>On 08/14/2020 06:29 PM, cherif chibane wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <div>Hi Marcus,</div>
                <div><br>
                </div>
                <div>I am running UHD-3.15.LTS</div>
                <div>
                  <div>
                    <div dir=3D"ltr">
                      <div dir=3D"ltr">
                        <div>____________</div>
                        Cherif Chibane</div>
                    </div>
                  </div>
                  <br>
                </div>
              </div>
            </blockquote>
            The RFNOC image is the standard image now (even if you
            aren&#39;t using RFNOC at the UHD API level, the machinery in
            the X310 FPGA is<br>
            =C2=A0 based on RFNOC).<br>
            <br>
            So, you probably want:<br>
            <br>
            usrp_x310_fpga_XG.bit<br>
            <blockquote type=3D"cite"><br>
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">On Fri, Aug 14, 2020
                  at 6:21 PM Marcus D. Leech via USRP-users &lt;<a href=3D"=
mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus=
.com</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                  <div bgcolor=3D"#FFFFFF">
                    <div>On 08/14/2020 04:06 PM, cherif chibane via
                      USRP-users wrote:<br>
                    </div>
                    <blockquote type=3D"cite">
                      <div dir=3D"ltr">
                        <div dir=3D"ltr">
                          <div dir=3D"ltr">
                            <div>Hello,</div>
                            <div><br>
                            </div>
                            <div>I would like to use teh X300 bit file:<cod=
e>=C2=A0=C2=A0

                                usrp_x310_fpga_RFNOC_XG.bit.</code></div>
                            <div><code>Does it exist somewhere or do I
                                need to re-create it? I used=C2=A0=C2=A0</c=
ode>uhd_images_downloader

                              to download=C2=A0the bitfiles but it did not
                              come with the files downloaded.</div>
                            <div>
                              <pre style=3D"white-space:pre-wrap">Thanks,
</pre>
                              <pre style=3D"white-space:pre-wrap">Cherif
</pre>
                            </div>
                            <div><br>
                            </div>
                            <div><code><br>
                              </code></div>
                            <div><code>Does it exist somewhere or do I
                                need to re-create it. I used=C2=A0=C2=A0</c=
ode>uhd_images_downloader

                              but it did not come with the files
                              downloaded.<br>
                              <code></code>
                              <pre style=3D"white-space:pre-wrap">Thanks,
</pre>
                              <pre style=3D"white-space:pre-wrap">Cherif
</pre>
                            </div>
                            <br>
                          </div>
                        </div>
                      </div>
                    </blockquote>
                    What version of UHD are you running?=C2=A0 I think the
                    naming convention for the standard &quot;factory&quot; =
BIT
                    files changed quite a while ago.<br>
                    <br>
                    <br>
                  </div>
                  _______________________________________________<br>
                  USRP-users mailing list<br>
                  <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_=
blank">USRP-users@lists.ettus.com</a><br>
                  <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-u=
sers_lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ett=
us.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
                </blockquote>
              </div>
            </blockquote>
            <br>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </div>

</blockquote></div></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" =
data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div>____________</div>=
Cherif Chibane</div></div>

--0000000000008edd9f05acdeb436--


--===============7527557983844737324==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7527557983844737324==--

