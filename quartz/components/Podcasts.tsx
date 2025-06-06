import { QuartzComponent, QuartzComponentConstructor, QuartzComponentProps } from "./types"
import style from "./styles/backlinks.scss"

interface BacklinksOptions {
  hideWhenEmpty: boolean
}

const defaultOptions: BacklinksOptions = {
  hideWhenEmpty: false,
}

export default ((opts?: Partial<BacklinksOptions>) => {
  const options: BacklinksOptions = { ...defaultOptions, ...opts }

  const Podcasts: QuartzComponent = ({
    fileData,
  }: QuartzComponentProps) => {

    if (options.hideWhenEmpty && fileData.frontmatter?.podcast == undefined) {
      return null
    }
    if (fileData.frontmatter?.podcast == undefined) {
      return null
    }
    {
    return (
      <div>
        <h3>Hear as you Read</h3>
         <div class="box">
              <div class="desc">
              <div class="container">
              <img src={fileData.frontmatter?.image as string} alt={fileData.frontmatter?.title as string} height={200} width={355} />
                <audio controls src={fileData.frontmatter?.podcast as string} style={{ width: '75%',placeSelf: 'start',backgroundColor:'black' }} class="bottom-r" >
                    Your browser does not support the audio element.
                </audio>
              <div class="bottom-l">{fileData.frontmatter?.title as string}</div>
              </div>
              </div>

         </div> 
      </div>
    )}
  }

  Podcasts.css = style+ `
  .box{
  max-width: 25rem;
  margin: 0.5rem;
  border: 3px solid var(--darkgray);
  border-radius: 0.5rem;
  background-color: var(--light);
  display: flex;
  flex-direction: column;
  gap: 0.1rem;
  }

  .desc {
  display: flex;
  flex-direction: column;
  gap: 0.1rem;
}

.container{
  position:relative;
  text-align:center;
  color: white;
  }

.bottom-r{
  position:absolute;
  bottom: 25px;
  right: 64px;
  font-size: 1rem;
  background-color: white;
  padding: 4px;
  border-radius: 0.5rem;
  height: 2rem;
  }

.bottom-l{
  position:absolute;
  bottom: 72px;
  right: 32px;
  font-size: 1.2rem;
  background-color: black;
  padding: 4px;
  border-radius: 0.5rem;
  
  }


`

  return Podcasts
}) satisfies QuartzComponentConstructor