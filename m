Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 666B02AC9A5
	for <lists+usrp-users@lfdr.de>; Tue, 10 Nov 2020 01:22:28 +0100 (CET)
Received: from [::1] (port=59384 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kcHQV-0005yS-48; Mon, 09 Nov 2020 19:22:23 -0500
Received: from mail-vk1-f174.google.com ([209.85.221.174]:34647)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <brendan.horsfield@vectalabs.com>)
 id 1kcHQQ-0005sk-F9
 for usrp-users@lists.ettus.com; Mon, 09 Nov 2020 19:22:18 -0500
Received: by mail-vk1-f174.google.com with SMTP id q77so2319957vkq.1
 for <usrp-users@lists.ettus.com>; Mon, 09 Nov 2020 16:21:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vectalabs-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AQap3fDFNHBOfWnUokignDjDXu1FqBtzyak5j0Enwl8=;
 b=Wtb7o7W1R+V3AjOXLAUcAuMiwEZrZTT+mWEFjmVmXMbljaug6bEcbg1nbnwekcPNVb
 XzcWqHh42T4wPll18Z4O6t6HICr4eK0i687QJAW2IOC05Bm2oPr1mu/a5+kHbglqkVCg
 bW1ZbR+ZQgliouBaGXogvgbxylrgtgtcxRv5Ube+wfElw4bVBE3tnuZG9++VcwkvGiBf
 1LmQt5MWVnN+dxRjdetV/VynVrFRqeNI3HMe9zTZlvIvboN2TNnvWYA8pgXFYb6VnExg
 7H2Fk7ptUo8QA0JsY3va1EUhefTovkDVvZM5xmqGSKMPFEfA4NMWdfAFhKQJ0nGWbqcI
 Nxsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AQap3fDFNHBOfWnUokignDjDXu1FqBtzyak5j0Enwl8=;
 b=Q503mZnSeUX/pRGs/Gywef6Vq8YMeplju1alJyqw6/r0w32Xu5ALxaLucCVzK2R3WF
 IuWLBZkNvAUc/kSA5zRvCcJkLugLumb5fkUST3UWZ25kfomULEK/+SPY/yarTebuX60y
 Rze/IHtDCmbMtLE5BanLZK0ern2HgEsif8H4iornDAYQXoBhInqXc34u/9i9sThbZ3o+
 YQ08EdhZ1836bZDSL6CK81li1XFp3hjpOoex1yiqBe8cYB+dQnMY4UEiVVsNMCp+ZgF1
 hbjlmgjKxh9NMm1eEB2c0d0kaw3i3RImdzdnzMWP71XXQyGcFsJfIgVx7bSKTqmsn6SG
 pzBw==
X-Gm-Message-State: AOAM532EvZQr1gBqZjXuRyh5y/EZSZBSZpETbYIJ1EEzPEFVP3UHSylY
 T9gNU4dCPm4Fmij3kY5dr39I2a0V2KnbrDlvZXLtpA==
X-Google-Smtp-Source: ABdhPJyoqOALTacNFTcd2T9cRzfSIfvxjD5acvfbc4KNCefF7i+XzFzg6E2p4PSkKoz8pb/LroIINaWKkGo3IQpqLZE=
X-Received: by 2002:a1f:c843:: with SMTP id y64mr8885372vkf.23.1604967697517; 
 Mon, 09 Nov 2020 16:21:37 -0800 (PST)
MIME-Version: 1.0
References: <CALNMZ8Wf-ZjvRRW9soXiF7xqAzxS81+5TA_8kSPYgBKzrrkSxg@mail.gmail.com>
 <CAGNhwTNMjBJKp_xpLkW_2a4pk+k+xWZGRkStvz1eQHJURE6w6Q@mail.gmail.com>
 <5FA96D1F.9030905@gmail.com>
In-Reply-To: <5FA96D1F.9030905@gmail.com>
Date: Tue, 10 Nov 2020 10:21:26 +1000
Message-ID: <CALNMZ8UZdG0_vXGw_uPu8T1FrUxwB+FdZ-M4Krjd_cNbpwG-GA@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, michael.dickens@ettus.com
Cc: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] Trouble with Python API
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
From: Brendan Horsfield via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Brendan Horsfield <brendan.horsfield@vectalabs.com>
Content-Type: multipart/mixed; boundary="===============0864123831801458678=="
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

--===============0864123831801458678==
Content-Type: multipart/alternative; boundary="0000000000007ca7af05b3b5a9e9"

--0000000000007ca7af05b3b5a9e9
Content-Type: text/plain; charset="UTF-8"

Hi Michael and Marcus,

Thank you both for your quick replies to my query.

Per your advice, I ran "make" followed by "sudo make install", and then
updated the PYTHONPATH variable.

My code now runs perfectly.  What a relief!

Thanks again for your help.

Best Regards,
Brendan.


On Tue, Nov 10, 2020 at 2:24 AM Marcus D. Leech via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On 11/09/2020 09:59 AM, Michael Dickens via USRP-users wrote:
>
> Check the PYTHONPATH to make sure it holds the correct install directory
> for UHD Python. I'm guessing it does not. I'm pretty sure UHD by default
> installs its Python library and files into
> "/usr/local/lib/python3/site-packages" ... or "dist-packages" ... note the
> "/python3/" rather than some specific 3.X version as was the case for
> earlier UHD (and many other projects). - MLD
>
> Also in the log of activities, I see BOTH a "pybombs install uhd", AND a
> build of the latest HEAD of UHD, but no actual compile+install of
>   that built code.
>
>
> On Mon, Nov 9, 2020 at 1:36 AM Brendan Horsfield via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hi Folks,
>>
>> I would like to write my own Python 3 script to stream Rx samples off my
>> Ettus B210 USRP.  I have installed the Python API on my Ubuntu laptop, but
>> I can't seem to get it to work, despite trying numerous ideas I found on
>> the Ettus Knowledge Base.
>>
>> For example, check out the following Python interpreter log.  I can call
>> "import uhd" OK, but the call to uhd.usrp.MultiUSRP() causes an error:
>>
>> Python 3.7.7 (default, Mar 26 2020, 15:48:22)
>> [GCC 7.3.0] :: Anaconda, Inc. on linux
>> Type "help", "copyright", "credits" or "license" for more information.
>> >>> import uhd
>> >>> my_usrp = uhd.usrp.MultiUSRP("type=b200")
>> Traceback (most recent call last):
>>   File "<stdin>", line 1, in <module>
>> AttributeError: module 'uhd' has no attribute 'usrp'
>> >>>
>>
>> Another example:  If I try to run the example script
>> "uhd/host/examples/python/rx_to_file.py", I get the following error:
>> "ModuleNotFoundError: No module named 'uhd'"
>>
>> The API installation procedure I have followed to this point is as
>> follows:
>> 1.  python3 -m pip install python-dev-tools --user --upgrade
>> 2.  git clone https://github.com/EttusResearch/uhd.git
>> 3.  pybombs install uhd
>> 4.  cmake $HOME/uhd/host
>>
>> ######################################################
>> -- # UHD enabled components
>> -- ######################################################
>> --   * LibUHD
>> --   * LibUHD - C API
>> --   * LibUHD - Python API
>> --   * Examples
>> --   * Utils
>> --   * Tests
>> --   * USB
>> --   * B100
>> --   * B200
>> --   * USRP1
>> --   * USRP2
>> --   * X300
>> --   * MPMD
>> --   * N300
>> --   * N320
>> --   * E320
>> --   * E300
>> --   * OctoClock
>> --   * Manual
>> --   * API/Doxygen
>> --   * Man Pages
>> --
>> -- ######################################################
>> -- # UHD disabled components
>> -- ######################################################
>> --   * DPDK
>> --
>> -- ******************************************************
>> -- * You are building the UHD development master branch.
>> -- * For production code, we recommend our stable,
>> -- * releases or using the release branch (maint).
>> -- ******************************************************
>> -- Building version: 4.0.0.0-46-g57ca4235
>> -- Using install prefix: /usr/local
>> -- Configuring done
>> -- Generating done
>> -- Build files have been written to: /home/anyone/uhd/host
>>
>> 5.  Set up Ubuntu dependencies: sudo apt-get install libboost-all-dev
>> libusb-1.0-0-dev doxygen python3-docutils python3-mako python3-numpy
>> python3-requests python3-ruamel.yaml python3-setuptools cmake
>> build-essential
>> 6.  Add the following line to .bashrc:  export
>> LD_LIBRARY_PATH=/usr/local/lib
>>
>> FYI -- I am running Ubuntu 18.04 on an HP Omen laptop with an Intel
>> i7-8750H CPU and 32 GB of RAM.
>>
>> Can anyone tell me what the source of this problem could be?  Any advice
>> or suggestions would be greatly appreciated!
>>
>> Thanks & Regards,
>> Brendan.
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>
>
> _______________________________________________
> USRP-users mailing listUSRP-users@lists.ettus.comhttp://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000007ca7af05b3b5a9e9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Michael and Marcus,<div><br></div><div>Thank you both f=
or your quick replies to my=C2=A0query.=C2=A0=C2=A0</div><div><br></div><di=
v>Per your advice, I ran &quot;make&quot; followed by &quot;sudo make insta=
ll&quot;, and then updated the PYTHONPATH variable.=C2=A0=C2=A0</div><div><=
br></div><div>My code now runs perfectly.=C2=A0 What a relief!</div><div><b=
r></div><div>Thanks again for your help.</div><div><br></div><div>Best Rega=
rds,</div><div>Brendan.</div><div>=C2=A0</div></div><br><div class=3D"gmail=
_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Nov 10, 2020 at 2:24 =
AM Marcus D. Leech via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.et=
tus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div>On 11/09/2020 09:59 AM, Michael Dickens
      via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">Check the PYTHONPATH to make sure it holds the
        correct install directory for UHD Python. I&#39;m guessing it does
        not. I&#39;m pretty=C2=A0sure UHD by default installs its=C2=A0Pyth=
on library
        and files into &quot;/usr/local/lib/python3/site-packages&quot; ...=
 or
        &quot;dist-packages&quot; ... note the &quot;/python3/&quot; rather=
 than some
        specific 3.X version as was the case for earlier UHD (and many
        other projects). - MLD</div>
    </blockquote>
    Also in the log of activities, I see BOTH a &quot;pybombs install uhd&q=
uot;,
    AND a build of the latest HEAD of UHD, but no actual compile+install
    of<br>
    =C2=A0 that built code.<br>
    <br>
    <blockquote type=3D"cite"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Mon, Nov 9, 2020 at 1:36 A=
M
          Brendan Horsfield via USRP-users &lt;<a href=3D"mailto:usrp-users=
@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir=3D"ltr">Hi Folks,
            <div><br>
            </div>
            <div>I would like to write my own Python 3 script to stream
              Rx samples off my Ettus B210 USRP.=C2=A0 I have installed the
              Python API on my Ubuntu laptop, but I can&#39;t seem to get i=
t
              to work, despite trying numerous ideas I found on the
              Ettus Knowledge Base.</div>
            <div><br>
            </div>
            <div>For example, check out the following Python interpreter
              log.=C2=A0 I can call &quot;import uhd&quot; OK, but the call=
 to
              uhd.usrp.MultiUSRP() causes an error:=C2=A0</div>
            <div><br>
            </div>
            <div>Python 3.7.7 (default, Mar 26 2020, 15:48:22) <br>
              [GCC 7.3.0] :: Anaconda, Inc. on linux<br>
              Type &quot;help&quot;, &quot;copyright&quot;, &quot;credits&q=
uot; or &quot;license&quot; for more
              information.<br>
              &gt;&gt;&gt; import uhd<br>
              &gt;&gt;&gt; my_usrp =3D uhd.usrp.MultiUSRP(&quot;type=3Db200=
&quot;)<br>
              Traceback (most recent call last):<br>
              =C2=A0 File &quot;&lt;stdin&gt;&quot;, line 1, in &lt;module&=
gt;<br>
              AttributeError: module &#39;uhd&#39; has no attribute &#39;us=
rp&#39;<br>
              &gt;&gt;&gt;=C2=A0<br>
            </div>
            <div><br>
            </div>
            <div>Another example:=C2=A0 If I try to run the example script
              &quot;uhd/host/examples/python/rx_to_file.py&quot;, I get the
              following error:=C2=A0 &quot;ModuleNotFoundError: No module n=
amed
              &#39;uhd&#39;&quot;=C2=A0</div>
            <div><br>
            </div>
            <div>The API installation procedure I have followed to this
              point is as follows:</div>
            <div>1.=C2=A0 python3 -m pip install python-dev-tools --user
              --upgrade</div>
            <div>2.=C2=A0 git clone <a href=3D"https://github.com/EttusRese=
arch/uhd.git" target=3D"_blank">https://github.com/EttusResearch/uhd.git</a=
></div>
            <div>3.=C2=A0 pybombs install uhd</div>
            <div>4.=C2=A0 cmake $HOME/uhd/host</div>
            <div><br>
            </div>
            <div>######################################################<br>
              -- # UHD enabled components =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<b=
r>
              -- ######################################################<br>
              -- =C2=A0 * LibUHD<br>
              -- =C2=A0 * LibUHD - C API<br>
              -- =C2=A0 * LibUHD - Python API<br>
              -- =C2=A0 * Examples<br>
              -- =C2=A0 * Utils<br>
              -- =C2=A0 * Tests<br>
              -- =C2=A0 * USB<br>
              -- =C2=A0 * B100<br>
              -- =C2=A0 * B200<br>
              -- =C2=A0 * USRP1<br>
              -- =C2=A0 * USRP2<br>
              -- =C2=A0 * X300<br>
              -- =C2=A0 * MPMD<br>
              -- =C2=A0 * N300<br>
              -- =C2=A0 * N320<br>
              -- =C2=A0 * E320<br>
              -- =C2=A0 * E300<br>
              -- =C2=A0 * OctoClock<br>
              -- =C2=A0 * Manual<br>
              -- =C2=A0 * API/Doxygen<br>
              -- =C2=A0 * Man Pages<br>
              -- <br>
              -- ######################################################<br>
              -- # UHD disabled components =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <br>
              -- ######################################################<br>
              -- =C2=A0 * DPDK<br>
              -- <br>
              -- ******************************************************<br>
              -- * You are building the UHD development master branch.<br>
              -- * For production code, we recommend our stable,<br>
              -- * releases or using the release branch (maint).<br>
              -- ******************************************************<br>
              -- Building version: 4.0.0.0-46-g57ca4235<br>
              -- Using install prefix: /usr/local<br>
              -- Configuring done<br>
              -- Generating done<br>
              -- Build files have been written to: /home/anyone/uhd/host<br=
>
            </div>
            <div><br>
            </div>
            <div>5.=C2=A0 Set up Ubuntu dependencies: sudo apt-get install
              libboost-all-dev libusb-1.0-0-dev doxygen python3-docutils
              python3-mako python3-numpy python3-requests
              python3-ruamel.yaml python3-setuptools cmake
              build-essential</div>
            <div>6.=C2=A0 Add the following line to .bashrc:=C2=A0=C2=A0exp=
ort
              LD_LIBRARY_PATH=3D/usr/local/lib</div>
            <div><br>
            </div>
            <div>FYI -- I am running Ubuntu 18.04 on an HP Omen laptop
              with an Intel i7-8750H CPU and 32 GB of RAM.</div>
            <div><br>
            </div>
            <div>Can anyone tell me what the source of this problem
              could be?=C2=A0 Any advice or suggestions would be greatly
              appreciated!</div>
            <div><br>
            </div>
            <div>Thanks &amp; Regards,</div>
            <div>Brendan.</div>
            <div><br>
            </div>
            <div><br>
            </div>
          </div>
          _______________________________________________<br>
          USRP-users mailing list<br>
          <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">U=
SRP-users@lists.ettus.com</a><br>
          <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lis=
ts.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/m=
ailman/listinfo/usrp-users_lists.ettus.com</a><br>
        </blockquote>
      </div>
      <br>
      <fieldset></fieldset>
      <br>
      <pre>_______________________________________________
USRP-users mailing list
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_li=
sts.ettus.com</a>
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
</blockquote></div>

--0000000000007ca7af05b3b5a9e9--


--===============0864123831801458678==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0864123831801458678==--

